import 'package:flutter/material.dart';

import '../theme/app_colors_theme.dart';
import '../theme/app_gradient_theme.dart';
import '../theme/app_padding_theme.dart';
import '../theme/app_shadow_theme.dart';
import '../theme/app_text_theme.dart';

extension ThemeDataExtension on ThemeData {
  //reversing linear gradient

  LinearGradient get linearGradient =>
      extension<AppGradientTheme>()?.linearGradient ??
      AppGradientTheme().linearGradient;
  BoxShadow get blueShadow =>
      extension<AppShadowTheme>()?.blueShadow ?? AppShadowTheme().blueShadow;
  BoxShadow get cardShadow =>
      extension<AppShadowTheme>()?.cardShadow ?? AppShadowTheme().cardShadow;
  AppTextStyleTheme get appTextStyleTheme =>
      extension<AppTextStyleTheme>() ?? AppTextStyleTheme();
  AppPaddingTheme get appPaddingTheme =>
      extension<AppPaddingTheme>() ?? AppPaddingTheme();
  AppColorTheme get appColorTheme =>
      extension<AppColorTheme>() ?? AppColorTheme();
  AppGradientTheme get appGradientTheme =>
      extension<AppGradientTheme>() ?? AppGradientTheme();
  AppShadowTheme get appShadowTheme =>
      extension<AppShadowTheme>() ?? AppShadowTheme();
}

extension GradientExtension on LinearGradient {
  LinearGradient reverse() {
    return LinearGradient(
      colors: colors.reversed.toList(),
      begin: begin,
      end: end,
      stops: stops,
      tileMode: tileMode,
    );
  }
}
