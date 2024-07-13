import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
   appBar: PreferredSize(
  
  preferredSize: const Size.fromHeight(50),
 child: 
 AppBar(
  automaticallyImplyLeading: false,
  title: const Text('Essentials',), 
  centerTitle: true,
  actions: [
    IconButton(onPressed: (){}, 
    icon: const Icon(Iconsax.notification,
     color: Colors.black,))
  ],)),
    );
  }
}