#!/bin/bash

# Ensure we're in the project root
cd "$(dirname "$0")/.."

echo "Generating localizations..."
flutter gen-l10n --arb-dir="lib/l10n/arb"
echo "Localizations generated successfully!" 