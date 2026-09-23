# Project Flow

Use the five skills as gates, not as one giant autonomous run.

1. `grill-with-docs`: no coding. Clarify intent and acceptance.
2. `to-spec`: no ticketing until design is implementation-ready.
3. `to-tickets`: create small tasks with objective verification.
4. `implement`: execute one ticket at a time.
5. `code-review`: review against source requirement/spec, not personal taste.

The main safety mechanism is intentional stopping: whenever an implementation decision would change product semantics, return to the previous gate instead of allowing the coding agent to make the decision silently.
