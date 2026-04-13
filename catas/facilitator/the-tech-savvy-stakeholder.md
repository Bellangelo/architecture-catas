# The Tech-Savvy Stakeholder

> You know the tech, so help teams out by being specific. "We need a REST API with three microservices" saves everyone time.

**Commonly affects:** Facilitators with strong technical backgrounds, senior engineers facilitating for the first time.

## The Anti-Pattern

Play the business stakeholder role but talk like an architect. When teams ask about goals, give them technical answers: "We need an event-driven system" instead of "We need to process orders fast." Define goals so narrowly that there's only one viable solution. Instead of "we want to grow revenue," say "we need a recommendation engine using collaborative filtering."

Drop technology names into the requirements. Mention specific databases, protocols, or patterns. After all, you know what the right answer is. Why make teams figure it out?

## Why It Feels Right

If you have a technical background (and most kata facilitators do), it's hard to suppress that knowledge. Technical specificity feels helpful and precise. Saying "we need Kafka for event streaming" sounds clearer than "the system needs to handle bursts of activity without losing data." You might also worry that being too vague will confuse teams or lead them down unproductive paths.

And if you've already thought through the architecture, sharing that thinking feels generous rather than harmful.

## The Catastrophe

Teams don't architect anything. They implement the facilitator's design. The kata becomes an assembly exercise: connect the pieces the stakeholder already prescribed. There's no room for creative problem-solving because the solution space has been collapsed to a single point.

During the review, every team presents roughly the same architecture because the "requirements" were really a specification. The discussion that should have been about trade-offs becomes a comparison of minor details. Nobody practiced architectural thinking because the thinking was already done for them.

Teams that tried a different approach feel like they went against the requirements, even if their design was better suited to the actual business problem underneath the technical language.

## The Rescue

Wear the business hat and stay in character:

- **Express goals in business terms.** "We want to reduce order processing time" not "we need async message queues." "We need to expand internationally" not "we need multi-region deployment."
- **Keep goals broad enough for multiple solutions.** "The business goal is revenue growth" opens the door to many architectural approaches. "Build a microservices-based recommendation engine" opens one door.
- **Limit your tech vocabulary.** A real business stakeholder doesn't say "REST API" or "event-driven." They say "our customers need it fast" and "we can't afford to lose orders." Let the teams translate business needs into technical decisions.
- **Test your requirements.** If your brief only supports one architecture, it's too specific. A good kata brief should allow at least 2-3 meaningfully different approaches.
- **Separate your hats.** You can put the architecture hat on during the review phase to give feedback. During the kata itself, stay in the business role.