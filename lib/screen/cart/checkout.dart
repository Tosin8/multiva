// import 'package:flutter/material.dart';


// import '../../model/cart.dart';

// class CheckoutScreen extends StatelessWidget {
//   final List<CartItem> cartItems;
//   final double deliveryFee;
//   final double discountAmount;

//   const CheckoutScreen({
//     Key? key,
//     required this.cartItems,
//     required this.deliveryFee,
//     required this.discountAmount,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double subTotal = cartItems.fold(0, (sum, item) => sum + item.product.price * item.quantity);
//     double totalAmount = subTotal + deliveryFee - discountAmount;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Checkout'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Order Summary', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 10),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: cartItems.length,
//                 itemBuilder: (context, index) {
//                   final item = cartItems[index];
//                   return ListTile(
//                     title: Text(item.product.name),
//                     subtitle: Text('Quantity: ${item.quantity}'),
//                     trailing: Text('N ${item.product.price * item.quantity}'),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text('Sub-Total: N ${subTotal.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
//             Text('Delivery Fee: N ${deliveryFee.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
//             Text('Discount: N ${discountAmount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18)),
//             const Divider(),
//             Text('Total: N ${totalAmount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle checkout logic here
//                 },
//                 child: const Text('Confirm Order'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:multiva/screen/cart/payment.dart';
import 'package:provider/provider.dart';

import '../../model/cart.dart';


class CheckoutScreen extends StatelessWidget {
  final List<CartItem> cartItems;
  final double deliveryFee;
  final double discountAmount;

  CheckoutScreen({
    required this.cartItems,
    required this.deliveryFee,
    required this.discountAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select how to receive your package(s)', style: TextStyle(fontSize: 16)),
            // Pickup Options
            ListTile(
              title: Text('Old Secretariat Complex, Area 1, Garki'),
              subtitle: Text('Abaji Abaji'),
              leading: Radio(
                value: 'pickup1',
                groupValue: 'pickup',
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: Text('Sokoto Street, Area 1, Garki'),
              subtitle: Text('Area 1 AMAC'),
              leading: Radio(
                value: 'pickup2',
                groupValue: 'pickup',
                onChanged: (value) {},
              ),
            ),
            // Delivery Address
            TextFormField(
              decoration: InputDecoration(
                
                labelText: 'Delivery'),
            ),
            // Contact Info
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone nos 1'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone nos 1'),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPage(),
                    ),
                  );
                },
                child: Text('Go to Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
