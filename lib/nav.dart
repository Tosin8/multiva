

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:multiva/screen/cart.dart';
import 'package:multiva/screen/productList.dart';
import 'package:multiva/screen/profile.dart';





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
            left: 20,
            right: 20,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
                // ignore: prefer_const_literals_to_create_immutables
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
                SizedBox(width: 2,),  
                  IconButton(
                    icon: const Icon(Iconsax.home),
                    color: _selectedIndex == 0 ? Colors.pink : Colors.white,
                    onPressed: () => _onItemTapped(0),
                  ),
                 // Space for FAB
                  IconButton(
                    icon: const Icon(Iconsax.shopping_bag),
                    color: _selectedIndex == 1 ? Colors.pink : Colors.white,
                    onPressed: () => _onItemTapped(1),
                  ),
                  IconButton(
                    icon: const Icon(Iconsax.user),
                    color: _selectedIndex == 2 ? Colors.pink : Colors.white,
                    onPressed: () => _onItemTapped(2),
                  ),
                  SizedBox(width: 2,), 
                ],
              ),
            ),
          ),
  ]    )  
   );
  }
}