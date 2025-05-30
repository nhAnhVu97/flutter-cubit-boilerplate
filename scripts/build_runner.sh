#!/bin/bash

# Ensure we're in the project root
cd "$(dirname "$0")/.."

case "$1" in
  "build")
    echo "Running build_runner build..."
    dart run build_runner build --delete-conflicting-outputs
    ;;
  "watch")
    echo "Running build_runner watch..."
    dart run build_runner watch --delete-conflicting-outputs
    ;;
  *)
    echo "Usage: $0 {build|watch}"
    exit 1
    ;;
esac 