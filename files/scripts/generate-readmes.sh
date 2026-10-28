#!/usr/bin/env bash
set -euo pipefail

# ==============================================================================
# 1. CONFIGURATION - Add your variables here
# ==============================================================================

# Define as many placeholders and their replacements as needed.
declare -A REPLACEMENTS=(
    ["{{BADGE_URL}}"]="https://ghcr-badge.egpl.dev"
    ["{{AUTHOR}}"]="yavasdev"
    ["{{REPO_NAME}}"]="ublue-tuxedo"
    ["{{TAGS}}"]="tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3"
    ["{{SIZE}}"]="size?color=%2326a269&tag=stable&label=latest+image+size"
    ["{{LATEST_TAG_LATEST}}"]="latest_tag?label=latest&ignore=*-*-*,sha*,stable*,testing*,latest"
    ["{{LATEST_TAG_STABLE}}"]="latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable"
    ["{{LATEST_TAG_TESTING}}"]="latest_tag?label=testing&ignore=*-*-*,sha*,latest*,stable*,testing"
)

# List of template files to process
TEMPLATES=(
    "README.template.md"
    "docs/README-TR.template.md"
)

# alternative way to handle it; need test.
# Enable recursive wildcard searching
#shopt -s globstar

# Put all matching files into the array
#TEMPLATES=( **/*.template.md )


# ==============================================================================
# 2. ENGINE / LOGIC - No need to touch below this line
# ==============================================================================

echo "Generating README files..."

for template in "${TEMPLATES[@]}"; do
    # If the file doesn't exist, warn and skip to the next one
    if [[ ! -f "$template" ]]; then
        echo "Warning: $template not found, skipping."
        continue
    fi

    # Set the output filename (regex) (removes '.template' from the name)
    # E.g., docs/README-TR.template.md -> docs/README-TR.md
    output="${template/.template/}"
    
    # Start by copying the template to the actual file target
    cp "$template" "$output"

    # Perform text replacement for each defined variable
    for key in "${!REPLACEMENTS[@]}"; do
        value="${REPLACEMENTS[$key]}"
        escaped_value="${value//&/\\&}" # Prevents the '&' character sed gotcha
        
        # Replace using sed, write to a temp file, then overwrite
        # (This approach is 100% robust and compatible across Linux and macOS)
        sed -e "s|${key}|${escaped_value}|g" "$output" > "${output}.tmp"
        mv "${output}.tmp" "$output"
    done

# --- NEW: FALLBACK BADGE LOGIC ---
    echo " -> Checking badges for missing tags in $output..."
    # 1. Find all badge URLs in the generated markdown
    grep -oE 'https://ghcr-badge\.egpl\.dev[^ )"]+' "$output" | sort -u | while read -r url; do
        
        # 2. Fetch the actual content of the URL silently
        body=$(curl -s "$url")
        
        # 3. Check if the response contains valid SVG code.
        # If it doesn't contain "<svg" (e.g., it is a JSON error), apply the fallback!
        if [[ "$body" != *"<svg"* ]]; then
            echo "    [Broken Badge detected] applying fallback for: $url"
            
            # Determine what the fallback badge should say based on the URL
            if [[ "$url" == *"label=latest"* ]]; then
                fallback="https://img.shields.io/badge/latest-none-lightgrey"
            elif [[ "$url" == *"label=testing"* ]]; then
                fallback="https://img.shields.io/badge/testing-none-lightgrey"
            elif [[ "$url" == *"label=stable"* ]]; then
                fallback="https://img.shields.io/badge/stable-none-lightgrey"
            elif [[ "$url" == *"size?"* ]]; then
                fallback="https://img.shields.io/badge/size-none-lightgrey"
            else
                fallback="https://img.shields.io/badge/status-none-lightgrey"
            fi
            
            # Escape dots and asterisks so sed doesn't misinterpret the URL
            escaped_url=$(echo "$url" | sed -e 's/\./\\./g' -e 's/\*/\\*/g')
            
            # Replace the broken link with the working fallback badge
            sed -e "s|${escaped_url}|${fallback}|g" "$output" > "${output}.tmp"
            mv "${output}.tmp" "$output"
        fi
    done
    # ---------------------------------

    if grep -qE '\{\{[^}]+\}\}' "$output"; then
        echo "Error: unresolved template variables remain in $output." >&2
        grep -oE '\{\{[^}]+\}\}' "$output" | sort -u >&2
        exit 1
    fi

    echo " -> Generated: $output"
done

echo "All files updated successfully!"