import 'package:flutter/widgets.dart';

enum ELocalization {
  en(Locale('en')),
  es(Locale('es'));

  const ELocalization(this.locale);

  final Locale locale;
}
