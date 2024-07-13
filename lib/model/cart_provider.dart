// import 'package:flutter/material.dart';

// import 'package:multiva/model/product.dart';

// import 'cart.dart';

// class CartProvider with ChangeNotifier {
//   final List<CartItem> _items = [];

//   List<CartItem> get items => _items;

//   void addItem(Product product) {
//     // Check if the product is already in the cart by matching name, description, and imageUrl
//     final index = _items.indexWhere((item) => 
//       item.product.name == product.name && 
//       item.product.description == product.description && 
//       item.product.imageUrl == product.imageUrl
//     );

//     if (index != -1) {
//       // If the product is already in the cart, increase the quantity
//       _items[index].quantity += 1;
//     } else {
//       // Otherwise, add a new item to the cart
//       _items.add(CartItem(product: product));
//     }
//     notifyListeners();
//   }

//   void removeItem(Product product) {
//     // Check if the product is in the cart by matching name, description, and imageUrl
//     final index = _items.indexWhere((item) => 
//       item.product.name == product.name && 
//       item.product.description == product.description && 
//       item.product.imageUrl == product.imageUrl
//     );

//     if (index != -1) {
//       // If the quantity is greater than 1, decrease it
//       if (_items[index].quantity > 1) {
//         _items[index].quantity -= 1;
//       } else {
//         // Otherwise, remove the item from the cart
//         _items.removeAt(index);
//       }
//       notifyListeners();
//     }
//   }

//   void removeItemByIndex(int index) {
//     _items.removeAt(index);
//     notifyListeners();
//   }

//   double get totalAmount {
//     return _items.fold(0.0, (sum, item) => sum + item.product.price * item.quantity);
//   }
// }


import 'package:flutter/material.dart';

import 'cart.dart';


class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void removeItemByIndex(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  double get totalAmount {
    return _items.fold(0.0, (sum, item) => sum + item.product.price * item.quantity);
  }
}
