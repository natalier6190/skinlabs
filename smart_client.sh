#!/usr/bin/env bash
set -euo pipefail

encode_adapter() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 19 ) % 997))
  done
  echo "$total"
}

encode_adapter 19 19
