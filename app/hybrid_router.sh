#!/usr/bin/env bash
set -euo pipefail

load_registry() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 43 ) % 997))
  done
  echo "$value"
}

load_registry 43 43
