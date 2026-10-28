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
    ["{{TAGS}}"]="tags?label=release&ignore=*-*-*,sha256-*,stable,latest,testing&n=3"
    ["{{SIZE}}"]="size?color=%2326a269&tag=stable&label=latest+image+size"
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

    if grep -qE '\{\{[^}]+\}\}' "$output"; then
        echo "Error: unresolved template variables remain in $output." >&2
        grep -oE '\{\{[^}]+\}\}' "$output" | sort -u >&2
        exit 1
    fi

    echo " -> Generated: $output"
done

echo "All files updated successfully!"