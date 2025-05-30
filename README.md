# Flutter Cubit Boilerplate

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A modern Flutter boilerplate using Cubit (from bloc) for state management, following clean architecture principles and best practices.

## Features 🎯

- ✨ Clean Architecture
- 📦 Cubit for state management
- 🌐 Internationalization ready
- 🎨 Custom UI kit package
- 🛠 Shared toolkit package
- 🔄 Multiple environment configurations
- 📱 Flavor support (development, staging, production)

## Project Structure 📁

```
lib/
├── core/           # Core functionality, base classes, and utilities
├── modules/        # Feature modules
├── localizations/  # Localization files
└── main.dart       # Application entry point

packages/
├── uikit/         # Shared UI components and themes
└── toolkit/       # Shared utilities and business logic
```

## Getting Started 🚀

### Prerequisites

- Flutter SDK Latest
- Dart SDK Latest

### Installation

1. Clone the repository
2. Install dependencies:
```sh
flutter pub get
```

## Available Scripts 📜

The project includes several utility scripts to help with development:

### Build Scripts
```sh
# Build app for different platforms and environments
./scripts/build_app.sh android dev     # Build Android development bundle
./scripts/build_app.sh android dev apk # Build Android development APK
./scripts/build_app.sh android prod    # Build Android production bundle
./scripts/build_app.sh ios dev        # Build iOS development IPA
./scripts/build_app.sh ios prod       # Build iOS production IPA
```

### Clean Script
```sh
# Clean the project and get dependencies
./scripts/clean.sh
```

### Localization Script
```sh
# Generate localizations
./scripts/gen_localization.sh
```

## Running the App 🏃‍♂️

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main.dart --dart-define-from-file=.env.development

# Staging
$ flutter run --flavor staging --target lib/main.dart --dart-define-from-file=.env.staging

# Production
$ flutter run --flavor production --target lib/main.dart --dart-define-from-file=.env.production
```

_\*This boilerplate works on iOS, Android, Web, and Windows._

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
@override
Widget build(BuildContext context) {
  final locale = context.locale;
  return Text(locale.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/localizations/arb`.

```
├── localizations
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

## Tech Stack 💻

- **State Management**: bloc/cubit 
- **Navigation**: auto_route 
- **Networking**: dio 
- **Dependency Injection**: get_it 
- **Local Storage**: shared_preferences 
- **Code Generation**: freezed, json_serializable
- **Static Analysis**: very_good_analysis 

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
