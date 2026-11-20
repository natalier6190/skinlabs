#!/usr/bin/env bash
set -euo pipefail

flush_registry() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 79 ) % 997))
  done
  echo "$value"
}

flush_registry 79 79
