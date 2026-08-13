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
  if find . -not -path './.git' -not -path './.git/*' -not -path './scripts/validate_public_repo.sh' -print | rg -n -i "$pattern"; then
    echo "BLOCKED: found unsafe pattern in tracked filename: $pattern"
    fail=1
  fi
  if rg -n -i -I --hidden --glob '!.git/**' --glob '!scripts/validate_public_repo.sh' "$pattern" .; then
    echo "BLOCKED: found unsafe pattern: $pattern"
    fail=1
  fi
  if git log --all -p --pretty=format: -- . ':(exclude)scripts/validate_public_repo.sh' | rg -n -i "$pattern"; then
    echo "BLOCKED: found unsafe pattern in Git history: $pattern"
    fail=1
  fi
done

echo "Checking unresolved wikilinks..."
if rg -n '\[\[[^]]+\]\]' --glob '*.md' .; then
  echo "BLOCKED: unresolved Obsidian wikilinks are not portable GitHub navigation."
  fail=1
fi

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

echo "Checking public release identity..."
if ! rg -q 'Public release v1\.1\.0 \| Sanitized point-in-time derivative' README.md; then
  echo "BLOCKED: README release identity is missing or stale."
  fail=1
fi
if ! rg -q 'Repository release: `v1\.1\.0`' PUBLIC_SNAPSHOT.md; then
  echo "BLOCKED: public snapshot release identity is missing or stale."
  fail=1
fi

echo "Checking required v1.1 routes..."
required=(
  'docs/02_GOVERNANCE/03_DECISION_DOCKETS.md'
  'docs/03_OPERATING_SYSTEM/06_INCIDENT_TO_SOP_LIFECYCLE.md'
  'docs/03_OPERATING_SYSTEM/07_COLD_READER_CONTEXT_COMPRESSION.md'
  'docs/04_TEMPLATES/04_DECISION_DOCKET_AND_CANDIDATE_INTAKE.md'
  'docs/04_TEMPLATES/05_SOP_DEPARTMENT_SHELL_TEMPLATE.md'
)
for path in "${required[@]}"; do
  if [[ ! -f "$path" ]]; then
    echo "BROKEN: missing required v1.1 artifact: $path"
    fail=1
  fi
  if ! rg -q -F "$(basename "$path")" docs/00_START_HERE.md; then
    echo "BROKEN: v1.1 artifact is not routed from Start Here: $path"
    fail=1
  fi
done

echo "Checking tracked workspace and symlink exclusions..."
if git ls-files | rg -n '(^|/)\.DS_Store$|\.obsidian/workspace(-mobile)?\.json$|(^|/)\.env($|\.)'; then
  echo "BLOCKED: tracked local workspace or environment file."
  fail=1
fi
if find . -type l -not -path './.git/*' -print -quit | grep -q .; then
  echo "BLOCKED: public repository contains a symlink."
  fail=1
fi

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
