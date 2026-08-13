#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail=0

echo "Checking private and unsafe patterns..."
patterns=(
  '/Users/'
  'docs.google.com'
  'drive.google.com'
  'api[_ -]?key'
  'password'
  'client secret'
  '@gmail.com'
  '@serendipityinc.com.br'
  'micro1'
  'Snorkel'
  'ORLA RIO'
)

for pattern in "${patterns[@]}"; do
  if rg -n -i "$pattern" --glob '*.md' --glob '*.json' .; then
    echo "BLOCKED: found unsafe pattern: $pattern"
    fail=1
  fi
done

echo "Checking Markdown links..."
while IFS=: read -r file line target; do
  target="${target%%#*}"
  [[ -z "$target" ]] && continue
  [[ "$target" =~ ^https?:// ]] && continue
  [[ "$target" =~ ^mailto: ]] && continue
  decoded="${target//%20/ }"
  if [[ ! -e "$(dirname "$file")/$decoded" ]]; then
    echo "BROKEN: $file:$line -> $target"
    fail=1
  fi
done < <(rg -n -o '\[[^]]+\]\(([^)]+)\)' --glob '*.md' . | sed -E 's#^([^:]+):([0-9]+):.*\]\(([^)]+)\).*#\1:\2:\3#')

echo "Checking filename version placement..."
while IFS= read -r file; do
  name="$(basename "$file")"
  if [[ "$name" =~ _v[0-9]+\.[0-9]+(\.[0-9]+)?_.+\.md$ ]]; then
    echo "BLOCKED: version is not terminal: $file"
    fail=1
  fi
done < <(find . -type f -name '*.md')

if [[ "$fail" -ne 0 ]]; then
  echo "Public-repository validation FAILED."
  exit 1
fi

echo "Public-repository validation PASSED."

