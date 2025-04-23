import 'package:flutter/material.dart';

class AppGradientTheme extends ThemeExtension<AppGradientTheme> {
  final LinearGradient linearGradient;
  final LinearGradient purpleGradient;
  final LinearGradient violetGradient;

  AppGradientTheme({
    this.linearGradient = const LinearGradient(
      colors: [
        Color(0xff96D9C9),
        Color(0xFF9DCEFF),
      ],
      begin: Alignment(-1.00, 0.08),
      end: Alignment(1, -0.08),
    ),
    this.purpleGradient = const LinearGradient(
      colors: [
        Color(0xffC58BF2),
        Color(0xFFEEA4CE),
      ],
      begin: Alignment(-1.00, 0.08),
      end: Alignment(1, -0.08),
    ),
    this.violetGradient = const LinearGradient(
      colors: [
        Color(0xFF93A8FE),
        Color(0xFFFFFFFF),
      ],
      begin: Alignment(0.5, -2.5),
      end: Alignment(0.5, 0.6),
    ),
  });

  factory AppGradientTheme.light() {
    return AppGradientTheme();
  }

  factory AppGradientTheme.dark() {
    return AppGradientTheme(
      linearGradient: const LinearGradient(
        colors: [
          Color(0xff9619C1),
          Color(0xFF9D3E4F),
        ],
      ),
      purpleGradient: const LinearGradient(
        colors: [
          Color(0xffC71BF2),
          Color(0xFF1EA41E),
        ],
      ),
    );
  }

  @override
  ThemeExtension<AppGradientTheme> copyWith({
    LinearGradient? linearGradient,
    LinearGradient? purpleGradient,
  }) {
    return AppGradientTheme(
      linearGradient: linearGradient ?? this.linearGradient,
      purpleGradient: purpleGradient ?? this.purpleGradient,
    );
  }

  @override
  ThemeExtension<AppGradientTheme> lerp(
    covariant ThemeExtension<AppGradientTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppGradientTheme();
  }
}
