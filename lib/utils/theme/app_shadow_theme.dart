import 'package:flutter/material.dart';

class AppShadowTheme extends ThemeExtension<AppShadowTheme> {
  final BoxShadow blueShadow;
  final BoxShadow purpleShadow;
  final BoxShadow cardShadow;
  AppShadowTheme({
    this.blueShadow = const BoxShadow(
      color: Color(0x1E95ADFE),
      offset: Offset(0, 10),
      blurRadius: 22,
      spreadRadius: 0,
    ),
    this.purpleShadow = const BoxShadow(
      color: Color(0x1EC58BF2),
      offset: Offset(0, 10),
      blurRadius: 22,
      spreadRadius: 0,
    ),
    this.cardShadow = const BoxShadow(
      color: Color(0x1A1D1617),
      offset: Offset(0, 10),
      blurRadius: 40,
      spreadRadius: 0,
    ),
  });

  factory AppShadowTheme.light() {
    return AppShadowTheme();
  }

  @override
  ThemeExtension<AppShadowTheme> copyWith({
    BoxShadow? blueShadow,
    BoxShadow? purpleShadow,
    BoxShadow? cardShadow,
  }) {
    return AppShadowTheme(
      blueShadow: blueShadow ?? this.blueShadow,
      purpleShadow: purpleShadow ?? this.purpleShadow,
      cardShadow: cardShadow ?? this.cardShadow,
    );
  }

  @override
  ThemeExtension<AppShadowTheme> lerp(
    covariant ThemeExtension<AppShadowTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppShadowTheme();
  }
}
