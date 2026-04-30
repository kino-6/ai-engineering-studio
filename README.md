# ai-engineering-studio

Vendor-neutral Engineering Studio workflow for AI coding agents.

This repository provides a minimal workflow made of **agents**, **commands**, **rules**, and an optional **session hook**. It is inspired by [Claude-Code-Game-Studios](https://github.com/disler/claude-code-game-studios), but it is **not tied to Claude Code**.

## Canonical workflow location

The canonical source of the workflow is:

- `studio/`
  - `studio/agents/`
  - `studio/commands/`
  - `studio/rules/`
  - `studio/hooks/`

## Vendor neutrality

`studio/` is designed to be used by Codex and generic AI coding agents without vendor lock-in.

If you use Claude Code, `.claude/` can be used as an optional adapter location.

## Usage examples

### Generic AI agent usage

1. Read `studio/README.md`.
2. Use `studio/commands/start.md` to classify work and surface risks.
3. Use `studio/commands/plan.md` before edits.
4. Execute changes guided by `studio/rules/*`.
5. Run `studio/commands/gate-check.md` before review.
6. Optionally run the hook:
   - `sh studio/hooks/session-log.sh`

### Claude Code usage (optional)

1. Copy desired files from `studio/` into `.claude/`.
2. Run your normal Claude Code workflow against `.claude/`.

Example:

```sh
mkdir -p .claude
cp -R studio/agents studio/commands studio/rules studio/hooks .claude/
```

See `.claude/README.md` for the adapter note.
