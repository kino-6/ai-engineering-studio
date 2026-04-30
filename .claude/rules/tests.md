# Rule Set: Tests

Scope examples: `tests/**` and test-related updates.

## Rules
- Cover normal, error, and boundary behavior where practical.
- State what behavior each test protects.
- Avoid flaky/non-deterministic patterns.
- Avoid unnecessary external dependencies.
- Keep tests readable and maintainable.

## Minimal test review checklist
- [ ] Happy path covered
- [ ] Error path covered (if applicable)
- [ ] Boundary condition covered (if applicable)
- [ ] Assertion intent clear
