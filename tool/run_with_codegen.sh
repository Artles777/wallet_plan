#!/usr/bin/env bash

set -euo pipefail

watch_pid=""

cleanup() {
  if [[ -n "${watch_pid}" ]] && kill -0 "${watch_pid}" 2>/dev/null; then
    kill "${watch_pid}" 2>/dev/null || true
    wait "${watch_pid}" 2>/dev/null || true
  fi
}

trap cleanup EXIT INT TERM

echo "==> Running initial code generation"
dart run build_runner build --delete-conflicting-outputs

echo "==> Starting code generation watcher"
dart run build_runner watch --delete-conflicting-outputs &
watch_pid=$!

echo "==> Starting Flutter app"
flutter run "$@"
