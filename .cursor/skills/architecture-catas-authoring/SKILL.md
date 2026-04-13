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
- **Markdown with front matter.** Each cata file has a small YAML front matter block for just-the-docs navigation. GitHub hides front matter when rendering, so files still read well on GitHub.
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

## Front Matter

Each cata file needs a YAML front matter block at the top:

```yaml
---
title: The Cata Name
parent: Facilitator Catas   # or "Participant Catas"
nav_order: N                # sequential within the parent
---
```

The folder `README.md` files use `has_children: true` instead of `parent`.

## When Adding a New Cata

1. Confirm the cata name and one-liner with the user
2. Write the cata file in the correct folder with front matter (`title`, `parent`, `nav_order`)
3. Add it to the folder's `README.md`
4. Add it to the root `README.md` table
