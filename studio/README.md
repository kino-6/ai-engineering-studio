# Engineering Studio Workflow (Canonical)

This directory is the canonical, vendor-neutral Engineering Studio workflow.

## Includes
- `agents/`: role perspectives (`architect`, `implementer`, `reviewer`).
- `commands/`: workflow commands (`start`, `plan`, `gate-check`).
- `rules/`: lightweight guardrails for requirements, design, code, and tests.
- `hooks/session-log.sh`: optional session audit log helper.

## Recommended flow
1. Use `commands/start.md` to classify work and identify assumptions/risks.
2. Use `commands/plan.md` before making changes.
3. Implement focused changes with `agents/implementer.md` and `rules/*`.
4. Run `commands/gate-check.md` before review or merge.
5. Optionally run `sh hooks/session-log.sh` for a lightweight audit log.

## Optional Claude Code adapter
If needed, copy the desired files from `studio/` into `.claude/`.
