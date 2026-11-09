#!/bin/bash
# Push a change live. Render redeploys automatically on push to main.
set -euo pipefail
cd "$(dirname "$0")"
MSG="${1:-update brief}"

git add -A

# Distinguish "nothing changed" from a commit that actually failed. The old
# version used `|| echo nothing to commit`, which swallowed real errors (a
# missing git identity looked identical to a clean tree) and reported success
# while pushing nothing.
if git diff --cached --quiet; then
  echo "nothing to commit — working tree matches HEAD"
  exit 0
fi

git commit -q -m "$MSG"
git push -q origin main
echo "pushed — Render redeploys in ~30s"
echo "https://everyday-dose-creator-brief.onrender.com/"
