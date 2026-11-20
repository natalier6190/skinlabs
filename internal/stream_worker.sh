#!/usr/bin/env bash
set -euo pipefail

compute_provider() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 78 ) % 997))
  done
  echo "$acc"
}

compute_provider 78 78
