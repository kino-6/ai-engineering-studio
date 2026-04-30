# Minimal Engineering Studio (Trial)

This `.claude/` directory is a minimal Engineering Studio workflow inspired by Claude-Code-Game-Studios.
It is intentionally small and designed as a trial template for real engineering work.

## What is included
- `agents/`: three role perspectives (architect, implementer, reviewer).
- `commands/`: three workflow commands (`/start`, `/plan`, `/gate-check`).
- `rules/`: lightweight guardrails for requirements, design, code, and tests.
- `hooks/session-log.sh`: optional session audit log helper.

## Recommended usage
1. Use `/start` to classify the work and identify assumptions/risks.
2. Use `/plan` before making changes.
3. Make focused changes using the implementer perspective.
4. Use `/gate-check` before review or merge.
5. Optionally run `sh .claude/hooks/session-log.sh` for a lightweight audit log.

## Example workflows
### 1) Small bugfix
- Run `/start` to classify as **bugfix** and identify likely side effects.
- Run `/plan` with affected files, fix approach, and test steps.
- Implement minimal fix.
- Run `/gate-check` to confirm no blockers.

### 2) Documentation update
- Run `/start` to classify as **requirements** or **design docs** update.
- Run `/plan` with sections to revise and acceptance criteria updates.
- Update docs only.
- Run `/gate-check` to verify clarity and consistency.

### 3) Test addition
- Run `/start` to classify as **testing**.
- Run `/plan` listing behavior under test and boundary/error cases.
- Add focused tests.
- Run `/gate-check` to confirm non-flaky coverage and intent clarity.

## Hook usage
- Run: `sh .claude/hooks/session-log.sh`
- Optional: `chmod +x .claude/hooks/session-log.sh`
