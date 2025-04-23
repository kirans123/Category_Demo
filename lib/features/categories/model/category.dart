class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      title: map['title'] ?? '',
      image: map['image'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
    };
  }

  Category copyWith({
    String? title,
    String? image,
  }) {
    return Category(
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }
}
