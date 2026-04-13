#!/usr/bin/env bash
set -euo pipefail

# Prepends Jekyll front matter to markdown files before the Jekyll build.
# This keeps the source files in catas/ free of front matter so they render
# cleanly on GitHub, while giving just-the-docs the metadata it needs.

prepend_front_matter() {
  local file="$1"
  local front_matter="$2"
  local tmp
  tmp=$(mktemp)
  printf '%s\n\n' "$front_matter" | cat - "$file" > "$tmp"
  mv "$tmp" "$file"
}

nav_order=0

# README.md (site home page)
prepend_front_matter "README.md" "---
title: Home
layout: home
nav_order: 1
---"

# CONTRIBUTING.md
prepend_front_matter "CONTRIBUTING.md" "---
title: Contributing
nav_order: 4
---"

# Facilitator section index
prepend_front_matter "catas/facilitator/README.md" "---
title: Facilitator Catas
nav_order: 2
has_children: true
---"

# Participant section index
prepend_front_matter "catas/participant/README.md" "---
title: Participant Catas
nav_order: 3
has_children: true
---"

# Facilitator catas
nav_order=0
for file in catas/facilitator/the-*.md; do
  nav_order=$((nav_order + 1))
  title=$(head -1 "$file" | sed 's/^# //')
  prepend_front_matter "$file" "---
title: \"$title\"
parent: Facilitator Catas
nav_order: $nav_order
---"
done

# Participant catas
nav_order=0
for file in catas/participant/the-*.md; do
  nav_order=$((nav_order + 1))
  title=$(head -1 "$file" | sed 's/^# //')
  prepend_front_matter "$file" "---
title: \"$title\"
parent: Participant Catas
nav_order: $nav_order
---"
done

echo "Front matter injected into all markdown files."
