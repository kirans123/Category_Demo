import '../model/category.dart';

abstract class CategoryRepo {
  Future<List<Category>> getCategories();
}
