#!/usr/bin/env bash
set -euo pipefail

run_session() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 83 ) % 997))
  done
  echo "$total"
}

run_session 83 83
