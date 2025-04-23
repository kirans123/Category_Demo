import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

import '/features/categories/model/menu.dart';
import '../categories/categories_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final int _cartItemCount = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(Menu.menuList[_selectedIndex].name),
        backgroundColor: Colors.green,
      ),
      body: _selectedIndex == 2
          ? const Padding(
              padding: EdgeInsets.all(16.0),
              child: CategoriesScreen(),
            )
          : Center(
              child: Text(Menu.menuList[_selectedIndex].name),
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: Menu.menuList
            .map(
              (menu) => BottomNavigationBarItem(
                icon: menu.name == 'Categories'
                    ? badges.Badge(
                        badgeContent: Text(
                          '$_cartItemCount',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
                        ),
                        badgeStyle: const badges.BadgeStyle(
                          badgeColor: Colors.green,
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          padding: EdgeInsets.all(6),
                        ),
                        position: badges.BadgePosition.topEnd(top: -8, end: -8),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.category,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Icon(menu.icon),
                label: menu.name,
              ),
            )
            .toList(),
      ),
    );
  }
}
