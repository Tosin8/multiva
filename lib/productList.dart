import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey.shade300,
   appBar: PreferredSize(
  
  preferredSize: const Size.fromHeight(50),
 child: 
 AppBar(
  elevation: 0,
  
  backgroundColor: Colors.grey.shade300,
  automaticallyImplyLeading: false,
  title: const Text('Product List',), 
  
  centerTitle: true,
 
  )),
  body: Column(
    children: [
      const SizedBox(height: 20,),
      Container(
        
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: AssetImage('assets/images/bill.jpg'),
          ) ),    
  ), 

  // Title Category .

  const Text('Tech Gadget')
  ],
  ),
    );
  }
}