import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/features/categories/categories_controller/controller_provider.dart'; // Assuming this provider uses your CategoriesNotifier
import '/utils/extensions/string_extension.dart';
import '../../l10n/locale_keys.g.dart';
import 'categories_controller/categories_state.dart';

class CategoriesScreen extends HookConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final state = ref.watch(getCategoriesProvider);
    final notifier = ref.read(getCategoriesProvider.notifier);

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          notifier.getCategories(); // Load next page
        }
      });
      return null;
    }, [scrollController, notifier]); // Include notifier in the dependency list

    if (state is CategoriesLoading && state is! CategoriesLoaded) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is CategoriesError) {
      return Center(
        child: Text(
          state.error,
          style: const TextStyle(color: Colors.red),
        ),
      );
    } else if (state is CategoriesEmpty) {
      return Center(
        child: Text(LocaleKeys.noCategoriesAvailable.trl()),
      );
    } else if (state is CategoriesLoaded) {
      final categories = state.categoryList;

      return Column(
        children: [
          Expanded(
            child: GridView.builder(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.network(
                          category.image,
                          fit: BoxFit.cover,
                          height: 70,
                          width: 70,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(category.title),
                    ],
                  ),
                );
              },
            ),
          ),
          if (state.isLoadingMore)
            const Padding(
              padding: EdgeInsets.all(8),
              child: CircularProgressIndicator(),
            )
          else if (!state.hasMore &&
              categories.isNotEmpty) // Only show if some data has loaded
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('No more categories'),
            ),
        ],
      );
    } else {
      return const Center(child: Text('Unknown state'));
    }
  }
}
