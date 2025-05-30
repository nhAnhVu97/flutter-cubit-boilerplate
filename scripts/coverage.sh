#!/bin/bash

# Ensure we're in the project root
cd "$(dirname "$0")/.."

# Create coverage directory if it doesn't exist
mkdir -p coverage

# Run tests with coverage
echo "Running tests with coverage..."
flutter test --coverage --test-randomize-ordering-seed random

# Generate HTML report
echo "Generating HTML coverage report..."
genhtml coverage/lcov.info -o coverage/html/

# Generate coverage badge
echo "Generating coverage badge..."
# Extract coverage percentage
COVERAGE_PCT=$(lcov --summary coverage/lcov.info | grep "lines......" | cut -d ' ' -f 4 | cut -d '%' -f 1)

# Create badge using shields.io
curl "https://img.shields.io/badge/coverage-${COVERAGE_PCT}%25-brightgreen" > coverage_badge.svg

echo "Coverage report generated!"
echo "Coverage: ${COVERAGE_PCT}%"

# Open the report in the default browser
case "$(uname -s)" in
    Darwin*)    open coverage/html/index.html ;; # macOS
    Linux*)     xdg-open coverage/html/index.html ;; # Linux
    MINGW*)     start coverage/html/index.html ;; # Windows
    *)          echo "Please open coverage/html/index.html in your browser" ;;
esac 