---
name: architecture-catas-authoring
description: Conventions for authoring content in the architecture-catas repo. Use when creating, editing, or adding new catas, updating READMEs, or writing any markdown content in this project.
---

# Architecture Catas Authoring

## Process

1. **Agree on the list first.** Never write full cata pages until the user has reviewed and approved the list of catas to include. Present titles and one-liners, get confirmation, then write.
2. **Ask the user for lessons.** The catas should come from the user's real experience. Brainstorm only when asked. Don't invent content without checking.

## Writing Style

- **No em dashes or double dashes.** Do not use `—` or ` -- ` as punctuation anywhere in the content. Restructure sentences instead.
- **No front matter in source files.** Cata files must not contain YAML front matter. GitHub renders front matter as a visible table, which ruins readability. Front matter is injected at build time by `scripts/build-site.sh`.
- **Relative links everywhere.** Link between files using relative paths (e.g., `the-silent-treatment.md` from a sibling, `catas/facilitator/foo.md` from root).

## Cata Structure

Each cata follows this template (defined in `CONTRIBUTING.md`):

1. **Title** (`# The [Name]`)
2. **Quote** (one-sentence ironic summary as a blockquote)
3. **Commonly affects** (one-line bold text identifying who typically falls into this trap)
4. **The Anti-Pattern** (what you do wrong, written as ironic "advice")
4. **Why It Feels Right** (why people fall into this trap)
5. **The Catastrophe** (what actually goes wrong)
6. **The Rescue** (the actual good practice)

## File Conventions

- File names: kebab-case, prefixed with `the-` (e.g., `the-over-corrector.md`)
- Facilitator catas go in `catas/facilitator/`
- Participant catas go in `catas/participant/`
- Each folder has a `README.md` index that lists its catas
- Root `README.md` has a table linking to all catas

## GitHub Pages / Jekyll

The site uses the `just-the-docs` theme via Jekyll on GitHub Pages. Front matter required by Jekyll is **not** stored in the source files. Instead, `scripts/build-site.sh` injects it during the GitHub Actions build. The script reads each file's `# Title` heading to derive the `title` front matter value. If you add a new cata, make sure its filename matches the `catas/<role>/the-*.md` glob so the build script picks it up automatically.

## When Adding a New Cata

1. Confirm the cata name and one-liner with the user
2. Write the cata file in the correct folder (no front matter needed)
3. Add it to the folder's `README.md`
4. Add it to the root `README.md` table
