import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:multiva/const/headers_style.dart';

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
  body: Padding(
    padding: const EdgeInsets.only(left: 8, 
    right: 8), 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Stack( 
          children: [
          Container(
            
            height: 250,
            width: MediaQuery.of(context).size.width,
           child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/bill.jpg', fit: BoxFit.cover,), 
          ), 
          
           ),
            Positioned( 
            top: 60, 
            left: 20,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Premium Sounds', style: TextStyle(fontSize: 20, color: Colors.white, 
                fontWeight: FontWeight.bold),
                ), 
                 const Text('Premium Savings', style: TextStyle(fontSize: 20, color: Colors.white, 
                fontWeight: FontWeight.bold),
                ),
                 const Text('Limited Offer, hurry up and \nget yours now', style: TextStyle(fontSize: 16, color: Colors.white, 
              ),
                ),
              ].animate(interval: 400.ms).fade(duration: 500.ms),
             ),
           )
          ], 
        ),    
    
    
    // Title Category .
    SizedBox(height: 20,), 
    const Text('Tech Gadget', style: headerStyle), 
    ],
    ),
  ),
    );
  }
}