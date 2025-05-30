import 'package:boilerplate_app/localizations/arb/app_localizations.dart';
import 'package:flutter/widgets.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this);
}
