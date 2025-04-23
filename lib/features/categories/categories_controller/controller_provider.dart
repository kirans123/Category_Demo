import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'categories_notifier.dart';
import 'categories_state.dart';

final getCategoriesProvider =
    StateNotifierProvider.autoDispose<CategoriesNotifier, CategoriesState>(
  (ref) => CategoriesNotifier(),
);
