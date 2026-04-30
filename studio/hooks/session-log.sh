#!/bin/sh
set -eu

log_dir=".claude/logs"
mkdir -p "$log_dir"

ts_file="$(date -u +%Y%m%dT%H%M%SZ)"
log_file="$log_dir/session-$ts_file.log"

{
  echo "timestamp_utc: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "pwd: $(pwd)"

  if command -v git >/dev/null 2>&1 && git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo unknown)"
    echo "git_branch: $branch"
    echo ""
    echo "git_status_short:"
    git status --short 2>/dev/null || true
    echo ""
    echo "recent_commits:"
    git log --oneline -n 5 2>/dev/null || true
  else
    echo "git: unavailable_or_not_repo"
  fi
} > "$log_file"

echo "Session log written to $log_file"
