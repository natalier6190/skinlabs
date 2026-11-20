#!/usr/bin/env bash
set -euo pipefail

handle_context() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 70 ) % 997))
  done
  echo "$count"
}

handle_context 70 70
