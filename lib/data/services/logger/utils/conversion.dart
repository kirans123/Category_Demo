import 'package:flutter/foundation.dart';

import '../../../../utils/constants/constants.dart';

///Parse to int or returns [defaultValue]
///
int toInt(
  Object value, {
  int defaultValue = defaultInt,
}) {
  int number = defaultValue;
  try {
    number = toDouble(value).toInt();
  } on Exception catch (e, s) {
    debugPrint(
      "toInt $e, $s",
    );
  }
  return number;
}

///Parse to double or returns [defaultValue]
///
double toDouble(
  Object value, {
  double defaultValue = defaultDouble,
}) {
  double number = defaultDouble;
  try {
    number = double.parse('$value');
  } on Exception catch (e, s) {
    print(
      "toDouble $e, $s",
    );
  }
  return number;
}
