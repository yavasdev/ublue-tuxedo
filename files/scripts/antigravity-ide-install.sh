#!/usr/bin/env bash

# Fail-Fast: Exit immediately on command failure, unset variables, or broken pipes
set -euo pipefail

readonly INSTALL_DIR="/opt/antigravity"
readonly BASE_SITE_URL="https://antigravity.google"
readonly AUR_PKGBUILD_URL="https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=antigravity-bin"
readonly DESKTOP_FILE_PATH="/usr/share/applications/antigravity.desktop"
readonly URL_REGEX='https://edgedl\.me\.gvt1\.com/[^"'\''\s<>]+linux-x64/[^"'\''\s<>]+\.tar\.gz'

# Helper Functions (Separation of Concerns): Route logs to stderr so stdout
# remains strictly clean for returning URL strings from functions.
log_info() {
    echo "[INFO] $*" >&2
}

log_error() {
    echo "[ERROR] $*" >&2
}

# --- CHAIN HANDLERS ---

# Handler 1: Scrape the direct HTML source of the official download page
handler_official_html() {
    log_info "Trying Handler 1: Scanning official website HTML source..."
    curl -sL "${BASE_SITE_URL}/download/" \
        | grep -oP "${URL_REGEX}" \
        | head -n 1 || true
}

# Handler 2: Scan JS bundles linked on the official page (for SPA/Client-Side Rendering)
handler_official_js_bundles() {
    log_info "Trying Handler 2: Scanning JS bundles on official website..."
    local page_html js_paths
    page_html=$(curl -sL "${BASE_SITE_URL}/download/" || true)
    js_paths=$(echo "${page_html}" | grep -oP 'src="\K[^"]+\.js' || true)

    for path in ${js_paths}; do
        [[ "${path}" =~ ^http ]] || path="${BASE_SITE_URL}/${path#/}"
        
        local found_url
        found_url=$(curl -sL "${path}" | grep -oP "${URL_REGEX}" | head -n 1 || true)
        if [[ -n "${found_url}" ]]; then
            echo "${found_url}"
            return 0
        fi
    done
}

# Handler 3: Parse community repository metadata (AUR PKGBUILD)
handler_aur_pkgbuild() {
    log_info "Trying Handler 3: Reading AUR PKGBUILD metadata..."
    local pkgbuild
    pkgbuild=$(curl -sL "${AUR_PKGBUILD_URL}" || true)
    [[ -z "${pkgbuild}" ]] && return 0

    (
        # Safely evaluate only version and source variables inside an isolated subshell
        eval "$(echo "${pkgbuild}" | grep -E '^(pkgver|_pkgver|_build|source_x86_64|source)=' || true)"
        for item in "${source_x86_64[@]:-${source[@]:-}}"; do
            if [[ "${item}" =~ https://.*\.tar\.gz ]]; then
                echo "${BASH_REMATCH[0]}"
                break
            fi
        done
    ) 2>/dev/null || true
}

# --- CHAIN ORCHESTRATOR ---

resolve_download_url() {
    # Chain order: From fastest/most direct source to community fallback
    local -a handlers=(
        "handler_official_html"
        "handler_official_js_bundles"
        "handler_aur_pkgbuild"
    )

    for handler in "${handlers[@]}"; do
        local url
        url=$("${handler}")
        
        if [[ -n "${url}" ]]; then
            log_info "Success! URL resolved by '${handler}': ${url}"
            echo "${url}"
            return 0
        fi
        log_info "'${handler}' returned empty, passing to next handler..."
    done

    # Fail-Fast: If all handlers fail, abort the pipeline instead of installing a stale version
    log_error "All handlers in the responsibility chain failed! Could not resolve latest URL."
    return 1
}

# --- DOMAIN LOGIC ---

download_and_extract() {
    local url="$1"
    local target_dir="$2"
    
    log_info "Downloading and extracting to: ${target_dir}"
    mkdir -p "${target_dir}"
    curl -sL "${url}" | tar -xzf - -C "${target_dir}" --strip-components=1
}

create_desktop_shortcut() {
    local desktop_file="$1"
    cat <<EOF > "${desktop_file}"
[Desktop Entry]
Name=Antigravity IDE
Comment=Google Antigravity Workspace
Exec=${INSTALL_DIR}/antigravity
Icon=${INSTALL_DIR}/icon.png
Terminal=false
Type=Application
Categories=Development;IDE;
EOF
    log_info "Desktop shortcut created: ${desktop_file}"
}

main() {
    log_info "=== Starting Antigravity IDE Installation ==="
    
    local download_url
    download_url=$(resolve_download_url)
    
    download_and_extract "${download_url}" "${INSTALL_DIR}"
    create_desktop_shortcut "${DESKTOP_FILE_PATH}"
    
    log_info "=== Installation Completed Successfully ==="
}

# Testability guard: Only run main if executed directly, not when sourced by BATS
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi