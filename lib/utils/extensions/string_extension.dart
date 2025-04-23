import 'package:easy_localization/easy_localization.dart';

extension StringExtensions on String {
  String trl({
    Map<String, String>? args,
  }) {
    return this.tr();
  }
}
