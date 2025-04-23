import 'package:flutter/material.dart';

import '/utils/extensions/theme_extension.dart';
import '../../theme/index.dart';

class CustomGeneralButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomGeneralButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return InkWell(
      splashColor: themeData.appColorTheme.primary,
      splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: 315,
        height: 48,
        decoration: BoxDecoration(
          boxShadow: [AppTheme.lightTheme.blueShadow],
          border: Border.all(
            color: Theme.of(context).appColorTheme.lightGrey,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyleTheme.light().textLargeSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
