## Clarifications Documentation

A workspace for capturing insights and clarifications discovered during development — both about the codebase and the broader domain.

### What Goes Here

Any investigation or explanation worth preserving that isn't tied to a specific scoped work item or idea:
- how_authentication_works.md
- why_not_use_microservices.md
- which_database_should_we_use.md
- oauth2_grant_types_explained.md
- event_sourcing_vs_cqrs_tradeoffs.md

This covers both codebase-specific knowledge (how our auth flow works) and domain knowledge (how OAuth2 works generally). If it's about the codebase specifically, consider whether it belongs in `archaeology/` instead.

### Why It Matters

During development, you'll frequently ask AI to explain, investigate, or analyze things. Some responses are too valuable to lose in conversation history. The clarifications folder preserves these insights for future reference.

### Best Practices

- Name files as questions or topics for easy scanning
- Keep the original AI response if it was particularly clear
- Update when understanding evolves
- Link from main docs when relevant

This folder becomes your project's knowledge base - a living FAQ built from actual development questions.
