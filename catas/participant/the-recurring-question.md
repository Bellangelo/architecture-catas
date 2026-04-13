# The Recurring Question

> "Didn't we already decide this?" Yes. Twice. And you're about to decide it a third time.

**Commonly affects:** Teams that discuss verbally but never write anything down, teams where members drift in and out of sub-conversations.

## The Anti-Pattern

The same question keeps surfacing during the exercise. "Are we designing for multi-tenancy or single-tenant?" gets asked in minute 5, debated again in minute 15, and reopened in minute 25 when someone starts drawing a component that contradicts the earlier answer. Nobody pauses to ask *why* the question keeps coming back. Instead, the team re-answers it on the fly and moves on, treating the repetition as a minor interruption rather than a symptom.

## Why It Feels Right

Revisiting a question feels like thoroughness. The team is being careful, double-checking, making sure everyone is on the same page. Stopping to formalize a decision feels bureaucratic for a time-boxed exercise. Writing things down takes time you don't think you have, and besides, everyone was in the room when the decision was made. They should remember.

## The Catastrophe

Each time the question resurfaces, it gets a slightly different answer depending on who responds and what part of the design they're currently thinking about. The team accumulates invisible contradictions: one person designs around single-tenant assumptions while another builds multi-tenant data flows. These contradictions only become visible during the presentation, when a reviewer asks a pointed question and two teammates give conflicting answers.

Worse, the recurring question was actually the most important decision in the entire exercise. The team spent more cumulative time re-discussing it than they would have spent deciding it properly once and writing it on the whiteboard.

## The Rescue

Treat a recurring question as an alarm, not background noise:

- **Name it.** When someone asks something that sounds familiar, say it out loud: "This is the second time this has come up. We need to decide it now and write it down."
- **Write decisions visibly.** Keep a corner of the whiteboard (or a shared doc) for decisions made. A one-line statement like "Single-tenant, one DB per customer" is enough.
- **Check for the root cause.** A question that keeps returning often means the original answer was unclear, disagreed upon, or never truly accepted by everyone. Don't just re-state the decision; check if the team actually aligns on it.
- **Use it as a design smell.** Recurring questions tend to cluster around the hardest trade-offs. If the team keeps revisiting a topic, that topic probably deserves to be the centerpiece of the architecture discussion, not a footnote.
