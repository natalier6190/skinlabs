#!/usr/bin/env bash
set -euo pipefail

resolve_builder() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 96 ) % 997))
  done
  echo "$value"
}

resolve_builder 96 96
