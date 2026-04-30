# AGENTS.md

This repository is vendor-neutral.

## Canonical workflow
- Use `studio/` as the source of truth.
- Prefer `studio/agents`, `studio/commands`, `studio/rules`, and `studio/hooks`.

## Working guidance for AI coding agents
- Keep changes minimal and scoped.
- Follow the command flow: `start` -> `plan` -> implementation -> `gate-check`.
- Respect rule files in `studio/rules/`.
- Avoid adding dependencies unless explicitly requested.
- Preserve portability across coding agents and tools.

## Claude Code compatibility
- `.claude/` is optional adapter space only.
- Do not treat `.claude/` as canonical content.
