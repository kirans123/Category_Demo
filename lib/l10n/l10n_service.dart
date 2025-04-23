import 'dart:ui';

import 'utils/enum/language.dart';

abstract class L10nService {
  Locale get currentLocale;

  List<Locale> get supportedLocales;

  Locale fallbackLocale = const Locale('en', 'US');

  Future<String> getLocale();

  Future<void> setLocale(String languageCode);

  Future<void> init();
  final allLang = Language.values.map((e) => e.locale).toList();
}
