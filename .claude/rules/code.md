# Rule Set: Code Changes

Scope examples: `src/**`, `lib/**`, application/firmware code.

## Rules
- Keep changes minimal and focused.
- Preserve public APIs unless change is explicitly requested.
- Check boundary cases and error handling.
- Provide tests or manual verification steps.
- Avoid hidden side effects; document intended behavior changes.

## Embedded-oriented cautions
- Avoid introducing dynamic allocation in hot paths.
- Be careful with timing-sensitive code.
- Verify initialization order assumptions.
- Limit risky global state coupling and side effects.
