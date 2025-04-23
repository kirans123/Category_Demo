import '../../../utils/constants/constants.dart';
import '../model/category.dart';
import 'category_repo.dart';

class CategoryRepoImpl extends CategoryRepo {
  @override
  Future<List<Category>> getCategories() async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      // Return a list of categories from categoriesJson
      return categoriesJson
          .map((category) => Category.fromMap(category))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
