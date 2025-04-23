//class menu for menu name and IconData
import 'package:flutter/material.dart';

class Menu {
  final String name;
  final IconData icon;
  const Menu({
    required this.name,
    required this.icon,
  });
  static const List<Menu> menuList = [
    Menu(
      name: 'Home',
      icon: Icons.home_outlined,
    ),
    Menu(
      name: 'Favorites',
      icon: Icons.favorite_border,
    ),
    Menu(
      name: 'Categories',
      icon: Icons.category_outlined,
    ),
    Menu(
      name: 'Articles',
      icon: Icons.article_outlined,
    ),
    Menu(
      name: 'Profile',
      icon: Icons.person_outline,
    ),
  ];
}
