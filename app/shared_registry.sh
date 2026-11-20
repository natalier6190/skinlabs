#!/usr/bin/env bash
set -euo pipefail

handle_scheduler() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 19 ) % 997))
  done
  echo "$acc"
}

handle_scheduler 19 19
