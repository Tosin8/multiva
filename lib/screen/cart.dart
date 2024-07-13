// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../model/cart_provider.dart';
// import 'cart/checkout.dart';

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);
//    double subTotal = cart.totalAmount;
// //double subTotal = cartItems.fold(0, (sum, item) => sum + item.price);
//     double deliveryFee = 1500.0;
//     double discountAmount = 3500.0;
//     double totalAmount = subTotal + deliveryFee - discountAmount;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Cart'),
//       ),
//       body: cart.items.isEmpty
//           ? const Center(
//               child: Text('No Item in Cart'),
//             )
//           : Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: cart.items.length,
//                     itemBuilder: (context, index) {
//                       final item = cart.items[index];
//                       return Card(
//                         child: ListTile(
//                           leading: ClipRRect(
//                             borderRadius: BorderRadius.circular(8),
//                             child: Image.asset(item.imageUrl, width: 100, height: 200, fit: BoxFit.cover)),
//                           title: Text(item.name),
//                           subtitle: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(item.description, maxLines: 2, overflow: TextOverflow.ellipsis),
//                               Row(
//                                 children: [
//                                   IconButton(
//                                     icon: const Icon(Icons.remove),
//                                     onPressed: () {
//                                       if (item.quantity > 1) {
//                                         item.quantity--;
//                                         cart.notifyListeners();
//                                       }
//                                     },
//                                   ),
//                                   Text('${item.quantity}'),
//                                   IconButton(
//                                     icon: const Icon(Icons.add),
//                                     onPressed: () {
//                                       item.quantity++;
//                                       cart.notifyListeners();
//                                     },
//                                   ),
//                                 ],
//                               ),
//                               Text('N ${item.price.toStringAsFixed(2) * item.quantity}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
//                             ],
//                           ),
//                           trailing: IconButton(
//                             icon: const Icon(Icons.delete),
//                             onPressed: () => cart.removeItem(index),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 // Padding(
//                 //   padding: const EdgeInsets.all(8.0),
//                 //   child: Column(
//                 //     crossAxisAlignment: CrossAxisAlignment.stretch,
//                 //     children: [
//                 //       Text('Total Amount: N ${cart.totalAmount}',
//                 //       style: TextStyle(fontWeight: FontWeight.bold,
//                 //        fontSize: 18),),
//                 //       const SizedBox(height: 10),
//                 //       ElevatedButton(
//                 //         onPressed: () {},
//                 //         child: const Text('Checkout'),
//                 //       ),

//                 //       SizedBox(height: 30,), 
//                 //     ],
//                 //   ),
//                 // ),

//                 Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Shopping Summary',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Discount Code',
//                       border: OutlineInputBorder(),
//                       suffixIcon: ElevatedButton(
//                         onPressed: () {
//                           // Apply discount code
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.pink,
//                         ),
//                         child: const Text('Apply'),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Sub-Total', style: TextStyle(fontSize: 16)),
//                       Text('₦${subTotal.toStringAsFixed(2)}',
//                           style: const TextStyle(fontSize: 16)),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Delivery Fee', style: TextStyle(fontSize: 16)),
//                       Text('₦${deliveryFee.toStringAsFixed(2)}',
//                           style: const TextStyle(fontSize: 16)),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Discount Amount', style: TextStyle(fontSize: 16)),
//                       Text('₦${discountAmount.toStringAsFixed(2)}',
//                           style: const TextStyle(fontSize: 16)),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Total Amount', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                       Text('₦${totalAmount.toStringAsFixed(2)}',
//                           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => CheckoutScreen(
//                               cartItems: cart.items,
//                               deliveryFee: deliveryFee,
//                               discountAmount: discountAmount,
//                             ),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.pink,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 50,
//                           vertical: 15,
//                         ),
//                         textStyle: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       child: const Text('Checkout'),
//                     ),
//                   ),
//                 ],
//               ),
//            ) ],
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:multiva/model/cart_provider.dart';


import 'cart/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    double subTotal = cart.totalAmount;
    double deliveryFee = 1500.0;
    double discountAmount = 3500.0;
    double totalAmount = subTotal + deliveryFee - discountAmount;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: cart.items.isEmpty
          ? const Center(
              child: Text('No Item in Cart'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return Card(
                        child: ListTile(
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(item.product.imageUrl, width: 100, height: 200, fit: BoxFit.cover)),
                          title: Text(item.product.name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.product.description, maxLines: 2, overflow: TextOverflow.ellipsis),
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      if (item.quantity > 1) {
                                        item.quantity--;
                                        cart.notifyListeners();
                                      }
                                    },
                                  ),
                                  Text('${item.quantity}'),
                                  IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      item.quantity++;
                                      cart.notifyListeners();
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                'N ${(item.product.price * item.quantity).toStringAsFixed(2)}',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => cart.removeItemByIndex(index),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Shopping Summary',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Discount Code',
                          border: const OutlineInputBorder(),
                          suffixIcon: ElevatedButton(
                            onPressed: () {
                              // Apply discount code
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                            ),
                            child: const Text('Apply'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Sub-Total', style: TextStyle(fontSize: 16)),
                          Text('₦${subTotal.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Delivery Fee', style: TextStyle(fontSize: 16)),
                          Text('₦${deliveryFee.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Discount Amount', style: TextStyle(fontSize: 16)),
                          Text('₦${discountAmount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total Amount', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('₦${totalAmount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CheckoutScreen(
                                  cartItems: cart.items,
                                  deliveryFee: deliveryFee,
                                  discountAmount: discountAmount,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 15,
                            ),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text('Checkout'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}

