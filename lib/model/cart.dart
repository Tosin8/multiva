// import 'product.dart';

// class CartItem {
//   final Product product;
//   final String name;
//   final String imageUrl;
//   final String description;
//   final double price;
//   int quantity;

//   CartItem({
//     required this.product,
//     required this.name,
//     required this.imageUrl,
//     required this.description,
//     required this.price,
//     this.quantity = 1,
//   });

//   double get totalPrice => product.price * quantity; 
// }


// // import 'product.dart';

// // class CartItem {
// //   final Product product;
// //   int quantity;

// //   CartItem({
// //     required this.product,
// //     required this.quantity,
// //   });

// //   double get totalPrice => product.price * quantity;
// // }


import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });
}
