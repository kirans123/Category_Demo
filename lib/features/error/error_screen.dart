import 'package:flutter/material.dart';

import '../../l10n/locale_keys.g.dart';
import '../../utils/constants/index.dart';
import '../../utils/widgets/button/general_button.dart';
import '/utils/extensions/string_extension.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(Assets.error),
            Text(LocaleKeys.somethingWentWrong.trl()),
            const SizedBox(
              height: 20,
            ),
            CustomGeneralButton(
              text: 'Go Back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
