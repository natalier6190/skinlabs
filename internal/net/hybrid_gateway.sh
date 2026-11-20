#!/usr/bin/env bash
set -euo pipefail

compute_session() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 47 ) % 997))
  done
  echo "$result"
}

compute_session 47 47
