# Command: /gate-check

## Goal
Decide whether work is ready to proceed or merge.

## Gate levels
- **PASS**: No blocking issues found.
- **PASS WITH RISKS**: Usable, but residual risks exist.
- **BLOCKED**: Must-fix issues prevent proceed/merge.

## Required checks
- Requirements alignment
- Scope control (no unintended expansion)
- Side effects/regressions
- Verification quality (tests or manual steps)
- Security/reliability concerns
- Documentation/update completeness

## Required output format
- **Gate result:** PASS | PASS WITH RISKS | BLOCKED
- **Checked items:**
- **Must fix before proceeding:**
- **Nice to have:**
- **Residual risks:**
