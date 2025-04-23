import '../../app/app_config/config.dart';
import '../../features/categories/category_repo/category_repo.dart';
import '../../features/categories/category_repo/category_repo_impl.dart';

void initRepo() {
  getIt.registerSingleton<CategoryRepo>(CategoryRepoImpl());
}

CategoryRepo get categoryRepo => getIt.get();
