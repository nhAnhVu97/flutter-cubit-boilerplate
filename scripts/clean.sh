#!/bin/bash

# Ensure we're in the project root
cd "$(dirname "$0")/.."

echo "Cleaning project..."

# Remove build directories
rm -Rf build
flutter clean

# Get dependencies
flutter pub get

# Clean iOS specific files
if [ -d "ios" ]; then
  echo "Cleaning iOS files..."
  rm -Rf ios/Pods
  rm -Rf ios/.symlinks
  rm -Rf ios/Flutter/Flutter.framework
  rm -Rf ios/Flutter/Flutter.podspec
  
  # Run pod install if on macOS
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Running pod install..."
    cd ios
    pod install
    cd ..
  fi
fi

echo "Clean completed!" 