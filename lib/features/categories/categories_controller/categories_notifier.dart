import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/init/init_repo.dart';
import '../model/category.dart';
import 'categories_state.dart';

class CategoriesNotifier extends StateNotifier<CategoriesState> {
  CategoriesNotifier() : super(const CategoriesInitial()) {
    getCategories(isInitialLoad: true);
  }

  final int _pageSize = 10;
  int _currentPage = 0;
  bool _isFetchingMore = false;
  bool _hasMore = true;
  final List<Category> _allCategories = [];

  Future<void> getCategories({bool isInitialLoad = false}) async {
    if (_isFetchingMore || (!_hasMore && !isInitialLoad)) return;

    try {
      if (isInitialLoad) {
        state = const CategoriesLoading();
        _currentPage = 0;
        _hasMore = true;
        _allCategories.clear();
      } else {
        _isFetchingMore = true;
        if (state is CategoriesLoaded) {
          state = (state as CategoriesLoaded).copyWith(
            isLoadingMore: true,
            hasMore: _hasMore,
          );
        }
      }

      final allData = await categoryRepo.getCategories();

      final start = _currentPage * _pageSize;
      final end = start + _pageSize;

      if (start >= allData.length) {
        _hasMore = false;
        _isFetchingMore = false;

        // Remove loadingMore if set
        if (state is CategoriesLoaded) {
          state = (state as CategoriesLoaded).copyWith(
            isLoadingMore: false,
            hasMore: _hasMore,
          );
        }

        return;
      }

      final newBatch = allData.sublist(
        start,
        end > allData.length ? allData.length : end,
      );

      _allCategories.addAll(newBatch);
      _currentPage++;

      state = CategoriesLoaded(
        categoryList: _allCategories,
        isLoadingMore: false,
        hasMore: _hasMore,
      );
    } catch (e) {
      state = CategoriesError(error: e.toString());
    } finally {
      _isFetchingMore = false;
    }
  }
}
