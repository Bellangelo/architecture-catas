---
title: The Harsh Critic
parent: Facilitator Catas
nav_order: 4
---

# The Harsh Critic

> Tell them exactly what they got wrong. That's how they learn.

**Commonly affects:** Experienced architects giving feedback for the first time, facilitators who confuse critique with coaching, perfectionists.

## The Anti-Pattern

During the review phase, point out every mistake directly: "You should have used event sourcing here." "This won't scale." "Why didn't you consider CQRS?" Be specific about what's wrong and prescriptive about what the right answer should have been. If the team's design has gaps, list them all. Thoroughness is kindness.

Don't bother asking questions that guide the team to discover the gaps themselves. Just tell them.

## Why It Feels Right

You can see the problems clearly and you want the team to learn. Being direct feels honest and efficient. Dancing around issues with Socratic questions seems slow and indirect when you could just say "this is wrong, here's why." And if you have deep technical expertise, sharing it feels like the most valuable thing you can do.

You might also feel that softening feedback does the team a disservice. In the real world, bad architecture has real consequences. Why sugarcoat it?

## The Catastrophe

The team shuts down. Instead of engaging with the feedback and learning from it, they get defensive or go quiet. The review becomes a one-sided lecture where the facilitator demonstrates their own expertise rather than developing the team's thinking.

Teams that receive harsh feedback on their first kata are less likely to volunteer for the next one. The exercise that was supposed to build confidence and skill instead makes people feel inadequate. The specific technical feedback might be correct, but the delivery ensures it won't be absorbed.

The facilitator also misses a bigger opportunity: instead of telling the team "you should have used event sourcing," asking "what happens when two users modify the same record simultaneously?" would have led the team to discover the gap themselves, which sticks far longer than being told.

## The Rescue

Coach, don't critique. Guide teams to discover what they missed:

- **Ask questions instead of giving answers.** "What happens when this service goes down?" is more powerful than "you need a fallback strategy."
- **Start with what works.** Acknowledge the strong parts of the design before exploring the gaps. Teams that feel their effort is recognized are more receptive to challenge.
- **Focus on the gaps, not the fixes.** Point the team at the problem ("what about data consistency across these services?") and let them reason about solutions. Prescribing the fix robs them of the learning.
- **Keep it proportional.** Pick 2-3 key observations rather than listing every flaw. A team can absorb a few insights deeply; a long list of problems just feels overwhelming.
- **Remember the goal.** The kata is a learning exercise, not a code review. The team should leave feeling challenged and energized, not defeated.
