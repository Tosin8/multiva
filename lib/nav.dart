import 'package:Essentials/screens/shop/categories/category.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:multiva/screen/productList.dart';
import 'package:multiva/screen/profile.dart';

;



class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  static const List<Widget> _pages = <Widget>[
   
    ProductScreen(key: PageStorageKey('ProductScreen')),
    CartScreen(key: PageStorageKey('CartScreen')),
    
    ProfileScreen(key: PageStorageKey('ProfileScreen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Iconsax.home),
                    color: _selectedIndex == 0 ? Colors.grey : Colors.white,
                    onPressed: () => _onItemTapped(0),
                  ),
                  IconButton(
                    icon: const Icon(Iconsax.category),
                    color: _selectedIndex == 1 ? Colors.grey : Colors.white,
                    onPressed: () => _onItemTapped(1),
                  ),
                  const SizedBox(width: 40), // Space for FAB
                  IconButton(
                    icon: const Icon(Iconsax.bookmark),
                    color: _selectedIndex == 3 ? Colors.grey : Colors.white,
                    onPressed: () => _onItemTapped(3),
                  ),
                  IconButton(
                    icon: const Icon(Iconsax.user),
                    color: _selectedIndex == 4 ? Colors.grey : Colors.white,
                    onPressed: () => _onItemTapped(4),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50.0,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2; // Navigate to Cart page
                  _pageController.jumpToPage(2);
                });
              },
              child: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}