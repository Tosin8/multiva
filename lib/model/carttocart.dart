

import 'package:multiva/model/tech_gadget.dart';

class CartItem{
  TechGadget techGadget; 
  
  int quantity; 

  CartItem({
    required this.techGadget,
    
     this.quantity = 1
     });

     double get totalPrice {
      double addonsPrice =  (techGadget.price  * quantity) as double;
      return addonsPrice;
     }
}