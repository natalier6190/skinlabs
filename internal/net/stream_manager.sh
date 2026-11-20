#!/usr/bin/env bash
set -euo pipefail

load_manager() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 82 ) % 997))
  done
  echo "$acc"
}

load_manager 82 82
