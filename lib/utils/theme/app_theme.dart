import 'package:flutter/material.dart';

import 'app_colors_theme.dart';
import 'app_gradient_theme.dart';
import 'app_padding_theme.dart';
import 'app_shadow_theme.dart';
import 'app_text_theme.dart';

class AppTheme {
  static ThemeData get lightTheme =>
      ThemeData.light(useMaterial3: true).copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Poppins',
            ),
        inputDecorationTheme: _inputDecorationTheme,
        appBarTheme: _appBarLightTheme,
        scaffoldBackgroundColor: const Color(0xffffffff),
        extensions: [
          AppGradientTheme.light(),
          AppTextStyleTheme.light(),
          AppShadowTheme.light(),
          AppPaddingTheme.light(),
          AppColorTheme.light(),
        ],
      );

  static ThemeData get darkTheme => ThemeData.dark(useMaterial3: true).copyWith(
        extensions: [
          AppGradientTheme.dark(),
          AppColorTheme.dark(),
        ],
      );

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    labelStyle: AppTextStyleTheme.light()
        .textSmallRegular
        .copyWith(color: const Color(0xffADA4A5)), //mediumGrey
    hintStyle: AppTextStyleTheme.light()
        .textSmallRegular
        .copyWith(color: const Color(0xffADA4A5)), //mediumGrey
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color(0xffE1E1E1)), //lightGrey
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color(0xffE1E1E1)), //lightGrey
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color(0xffADA4A5)), //mediumGrey
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color(0xffE85B74)),
    ),
    errorStyle: AppTextStyleTheme.light()
        .textCaptionRegular
        .copyWith(color: const Color(0xffE85B74)),
    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
  );
  static const AppBarTheme _appBarLightTheme = AppBarTheme(
    backgroundColor: Color(0xffffffff),
    shadowColor: Color(0xffffffff),
    surfaceTintColor: Color(0xffffffff),
    elevation: 0,
    scrolledUnderElevation: 0,
  );
}
