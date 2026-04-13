---
title: The Solution-First Thinker
parent: Participant Catas
nav_order: 1
---

# The Solution-First Thinker

> Skip the boring problem exploration. You already know you need Kafka.

**Commonly affects:** Experienced engineers used to implementation work, teams under time pressure.

## The Anti-Pattern

The kata is barely on the screen and someone is already asking "should we use PostgreSQL or MongoDB?" The team jumps straight to picking technologies, drawing deployment diagrams, and debating microservices vs monolith. Nobody pauses to ask what the system actually needs to do, who the users are, what the constraints are, or which architectural characteristics matter most.

Why waste time on problem exploration when the fun part is choosing tools?

## Why It Feels Right

Technical decisions feel productive. Talking about databases and message queues is concrete and comfortable, especially for engineers. Problem exploration feels abstract and slow by comparison. In a time-pressured kata, jumping to solutions feels like getting a head start. And if you've solved similar problems before, pattern matching kicks in: "I've seen this, I know what to build."

## The Catastrophe

The team builds an architecture disconnected from the actual problem. They pick a message broker before knowing whether anything in the system is asynchronous. They split into microservices before understanding the domain boundaries. They debate caching strategies for a system whose primary challenge is data consistency, not performance.

During the presentation, reviewers ask "why did you choose this?" and the answer keeps circling back to familiarity rather than requirements. The architecture might be technically sound in isolation, but it doesn't address the specific drivers of this kata. Another team that spent 15 minutes understanding the problem before touching a whiteboard delivers a simpler, better-fitted design.

## The Rescue

Separate problem exploration from solution design:

- **Start with the requirements.** Read the full brief as a team. Identify the actors, use cases, and constraints before discussing technology.
- **Extract architectural characteristics.** What does this system need to optimize for? Scalability? Consistency? Simplicity? Cost? Name them explicitly and prioritize.
- **Ask "what" before "how."** Define what the system must do at a high level before deciding how to implement it.
- **Timebox problem exploration.** Dedicate the first 20-30% of the kata to understanding the problem. It's not wasted time; it's the foundation everything else sits on.
- **Check yourself.** If you hear technology names in the first 10 minutes, the team probably skipped a step.