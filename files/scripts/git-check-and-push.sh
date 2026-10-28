#!/usr/bin/env bash
set -euo pipefail

# Check if there are any actual changes
if git diff --staged --quiet; then
    echo "No changes detected, skipping commit."
    exit 0
fi

echo "Changes detected, committing and pushing..."

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git commit -m "docs: generate README and README-TR with updated templates"

# GITHUB_HEAD_REF is available on PRs. Fall back to GITHUB_REF_NAME on pushes.
TARGET_BRANCH="${GITHUB_HEAD_REF:-$GITHUB_REF_NAME}"

# Explicitly push to refs/heads/<branch-name> to avoid the refname error
git push origin "HEAD:refs/heads/${TARGET_BRANCH}"

echo "Changes pushed successfully!"
echo "    -> Commit message: \"docs: generate README and README-TR with updated templates\""