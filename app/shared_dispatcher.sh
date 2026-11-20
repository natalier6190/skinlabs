#!/usr/bin/env bash
set -euo pipefail

flush_client() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 55 ) % 997))
  done
  echo "$total"
}

flush_client 55 55
