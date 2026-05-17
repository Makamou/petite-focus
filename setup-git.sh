#!/bin/bash
# =====================================================================
# Petite Focus Studio — one-shot git setup & push
#
# Run this from the lapetite folder in Terminal:
#     cd "/Users/amkristian/Documents/website cookie/lapetite"
#     bash setup-git.sh
#
# It will: clean any stale .git state, initialize a fresh repo,
# commit everything, wire up your GitHub remote, and push.
# =====================================================================

set -e

# --- 1. EDIT THIS LINE if your repo URL is different ---------------
REPO_URL="https://github.com/Makamou/petite-focus.git"
# -------------------------------------------------------------------

echo "▶ Cleaning any partial git state..."
rm -rf .git .DS_Store

echo "▶ Initializing fresh repo on main..."
git init -b main
git config user.name "Moubarak Akamou"
git config user.email "amkristian91@gmail.com"

echo "▶ Staging files..."
git add -A
echo "  Files to commit: $(git diff --cached --name-only | wc -l | tr -d ' ')"

echo "▶ Creating initial commit..."
git commit -m "Refine Petite Focus Studio site: dark cinematic theme, refined logo, curated gallery

- Black & white cinematic theme with Cormorant Garamond + Inter typography
- Sticky frosted-glass header, full-screen hero with darkened overlay
- True grayscale treatment on home featured photos to match section heading
- Reordered gallery to lead with strongest portraits, staggered fade-in
- Minimalist contact form with bottom-border inputs and submit feedback
- Refined SVG logo with single thin ring and cardinal accents (currentColor)
- Self-contained: styles/ and images/ now live alongside the HTML"

echo "▶ Adding remote: $REPO_URL"
git remote add origin "$REPO_URL"

echo "▶ Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Your site is now on GitHub at:"
echo "   ${REPO_URL%.git}"
