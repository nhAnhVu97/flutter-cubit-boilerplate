#!/bin/bash

# Ensure we're in the project root
cd "$(dirname "$0")/.."

# Function to show usage
show_usage() {
  echo "Usage: $0 {android|ios} {dev|prod} [apk]"
  echo "Options:"
  echo "  android|ios   - Platform to build for"
  echo "  dev|prod     - Environment to build for"
  echo "  apk          - (Android only) Build APK instead of App Bundle"
  exit 1
}

# Check if platform is provided
if [ -z "$1" ] || [ -z "$2" ]; then
  show_usage
fi

PLATFORM=$1
ENV=$2
BUILD_APK=$3

case "$PLATFORM" in
  "android")
    case "$ENV" in
      "dev")
        if [ "$BUILD_APK" == "apk" ]; then
          echo "Building Android Development APK..."
          flutter build apk --flavor development --release -t lib/main.dart --dart-define-from-file=.env.development
          cd build/app/outputs/apk/development/release && open .
        else
          echo "Building Android Development App Bundle..."
          flutter build appbundle --flavor development --release -t lib/main.dart --dart-define-from-file=.env.development
          cd build/app/outputs/bundle/developmentRelease && open .
        fi
        ;;
      "prod")
        if [ "$BUILD_APK" == "apk" ]; then
          echo "Building Android Production APK..."
          flutter build apk --flavor production --release -t lib/main.dart --dart-define-from-file=.env.production
          cd build/app/outputs/flutter-apk && open .
        else
          echo "Building Android Production App Bundle..."
          flutter build appbundle --flavor production --release -t lib/main.dart --dart-define-from-file=.env.production
          cd build/app/outputs/bundle/productionRelease && open .
        fi
        ;;
      *)
        show_usage
        ;;
    esac
    ;;
  "ios")
    case "$ENV" in
      "dev")
        echo "Building iOS Development IPA..."
        flutter build ipa --flavor development --release --target lib/main.dart --dart-define-from-file=.env.development
        cd build/ios && open .
        ;;
      "prod")
        echo "Building iOS Production IPA..."
        flutter build ipa --flavor production --release --target lib/main.dart --dart-define-from-file=.env.production
        cd build/ios && open .
        ;;
      *)
        show_usage
        ;;
    esac
    ;;
  *)
    show_usage
    ;;
esac 