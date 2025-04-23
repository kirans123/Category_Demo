import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/utils/constants/app_keys.dart';
import '../data/init/init_service.dart';
import 'l10n_service.dart';
import 'utils/enum/language.dart';

class L10nServiceImpl implements L10nService {
  Locale _locale = const Locale('en');

  @override
  List<Locale> get supportedLocales =>
      Language.values.map((e) => e.locale).toList();

  @override
  Locale get currentLocale => _locale;

  @override
  Locale fallbackLocale = const Locale('en');

  @override
  Future<String> getLocale() async {
    // Removed Direct access to storage service because services must not
    // be accessed directly from other services.
    final prefInstance = await SharedPreferences.getInstance();

    return prefInstance.getString(AppKeys.currentLanguage) ??
        fallbackLocale.languageCode;
  }

  @override
  Future<void> setLocale(String languageCode) async {
    _locale = Locale(languageCode);
    await sharedPrefService.setString(
      AppKeys.currentLanguage,
      languageCode,
    );
  }

  @override
  Future<void> init() async {
    final selectedLanguage = await getLocale();
    if (selectedLanguage.isNotEmpty) {
      try {
        _locale = Language.values
            .where((item) => item.locale.languageCode == selectedLanguage)
            .first
            .locale;
      } catch (e) {
        _locale = fallbackLocale;
      }
    } else {
      _locale = fallbackLocale;
    }
  }

  @override
  List<Locale> get allLang => Language.values.map((e) => e.locale).toList();
}
