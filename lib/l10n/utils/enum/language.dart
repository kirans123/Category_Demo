import 'dart:ui';

import '../../../utils/constants/index.dart';

enum Language {
  english(
    Locale('en'),
    Assets.englishTrl,
    // Assets.metamaskIcon,
    'English',
  );

  /// Add another languages support here
  const Language(
    this.locale,
    this.localePath,
    //this.image,
    this.text,
  );

  final Locale locale;
  final String localePath;
  //final String image; // Optional: this properties used for ListTile details
  final String text; // Optional: this properties used for ListTile details
}
