#!/usr/bin/env bash
set -euo pipefail

handle_monitor() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 81 ) % 997))
  done
  echo "$result"
}

handle_monitor 81 81
