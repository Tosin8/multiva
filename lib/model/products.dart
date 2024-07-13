import 'package:flutter/material.dart';

import 'tech_gadget.dart';

class Products extends ChangeNotifier{

 //  List<Product> _products = [];
 final techGadgets = <TechGadget>[
  TechGadget(
   name: "Hp Envy 300",
   description: 'The HP Envy is a line of sleek, high-performance laptops known for their stylish design, powerful hardware, and advanced features.', 
     
     imageUrl: "assets/images/1.jpg",
     price: "#10,000"),

      TechGadget(
   name: "Oraimo Earphone",
   description: 'Ear-cup-mounted controls offer convenient management of music, calls and modes without reaching for your phone.', 
     
     imageUrl: "assets/images/2.jpg",
     price: "#30,000"),
      TechGadget(
   name: "40,000mAH Pwerbank",
   description: 'Powebankn is a line of sleek, high-performance laptops known for their stylish design, powerful hardware, and advanced features.', 
     
     imageUrl: "assets/images/3.jpg",
     price: "#10,000"),

      TechGadget(
   name: "Iphone 14 pro",
   description: 'The new Action button is coming to the iPhone 15 Pro Max that launches the camera, voice recorder and any app you want, in addition to muting calls. ', 
     
     imageUrl: "assets/images/4.jpg",
     price: "#60,000"),
     
]; 
}

