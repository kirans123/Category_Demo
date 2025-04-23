import 'package:equatable/equatable.dart';

import '../model/category.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object?> get props => [];
}

class CategoriesInitial extends CategoriesState {
  const CategoriesInitial();
}

class CategoriesLoading extends CategoriesState {
  const CategoriesLoading();
}

class CategoriesLoaded extends CategoriesState {
  final List<Category> categoryList;
  final bool isLoadingMore;
  final bool hasMore;

  const CategoriesLoaded({
    required this.categoryList,
    this.isLoadingMore = false,
    this.hasMore = true,
  });
  CategoriesLoaded copyWith({
    List<Category>? categoryList,
    bool? isLoadingMore,
    bool? hasMore,
  }) {
    return CategoriesLoaded(
      categoryList: categoryList ?? this.categoryList,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class CategoriesError extends CategoriesState {
  final String error;
  const CategoriesError({
    required this.error,
  });
  @override
  List<Object?> get props => [error];
}

class CategoriesEmpty extends CategoriesState {
  const CategoriesEmpty();
}
