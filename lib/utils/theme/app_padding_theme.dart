import 'package:flutter/material.dart';

class AppPaddingTheme extends ThemeExtension<AppPaddingTheme> {
  EdgeInsets marginLeftRight;
  EdgeInsets marginTop;
  EdgeInsets paddingBelowGrid;
  EdgeInsets paddingBelowHeading;
  EdgeInsets marginLeftRightBottom;
  EdgeInsets marginBelowTile;
  EdgeInsets marginLeftRightBottomTop;

  AppPaddingTheme({
    this.marginLeftRight = const EdgeInsets.fromLTRB(30, 0, 30, 0),
    this.marginTop = const EdgeInsets.fromLTRB(0, 40, 0, 0),
    this.paddingBelowGrid = const EdgeInsets.fromLTRB(0, 0, 0, 30),
    this.paddingBelowHeading = const EdgeInsets.fromLTRB(0, 0, 0, 15),
    this.marginLeftRightBottom = const EdgeInsets.fromLTRB(30, 0, 30, 10),
    this.marginBelowTile = const EdgeInsets.fromLTRB(0, 0, 0, 8),
    this.marginLeftRightBottomTop = const EdgeInsets.fromLTRB(30, 40, 30, 10),
  });

  factory AppPaddingTheme.light() {
    return AppPaddingTheme();
  }

  @override
  ThemeExtension<AppPaddingTheme> copyWith({
    EdgeInsets? marginLeftRight,
    EdgeInsets? marginTop,
    EdgeInsets? paddingBelowGrid,
    EdgeInsets? paddingBelowHeading,
    EdgeInsets? marginLeftRightBottom,
    EdgeInsets? marginBelowTile,
    EdgeInsets? marginLeftRightBottomTop,
  }) {
    return AppPaddingTheme(
      marginLeftRight: marginLeftRight ?? this.marginLeftRight,
      marginTop: marginTop ?? this.marginTop,
      paddingBelowGrid: paddingBelowGrid ?? this.marginTop,
      paddingBelowHeading: paddingBelowHeading ?? this.paddingBelowHeading,
      marginLeftRightBottom:
          marginLeftRightBottom ?? this.marginLeftRightBottom,
      marginBelowTile: marginBelowTile ?? this.marginBelowTile,
      marginLeftRightBottomTop:
          marginLeftRightBottomTop ?? this.marginLeftRightBottomTop,
    );
  }

  @override
  ThemeExtension<AppPaddingTheme> lerp(
    covariant ThemeExtension<AppPaddingTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppPaddingTheme();
  }
}
