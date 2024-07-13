import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:multiva/const/headers_style.dart';

import '../model/products.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade300,
          automaticallyImplyLeading: false,
          title: const Text('Product List'),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              // Billboard
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
                        const Text('Premium Sounds', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                        const Text('Premium Savings', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                        const Text('Limited Offer, hurry up and \nget yours now', style: TextStyle(fontSize: 16, color: Colors.white)),
                      ].animate(interval: 400.ms).fade(duration: 500.ms).slide(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              // Title Category
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: const Text('Tech Gadget', style: headerStyle),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 400,  // Adjust the height to fit your content
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: techGadgets.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 8),  // Add some spacing between items
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(techGadgets[index].imageUrl, height: 200, width: 200, fit: BoxFit.cover,),
                          ),
                          const SizedBox(height: 10,),
                          Text(techGadgets[index].name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 5,),
                          Text(techGadgets[index].description, style: const TextStyle(fontSize: 16), maxLines: 2, softWrap: true, overflow: TextOverflow.ellipsis,),
                          const SizedBox(height: 5,),
                          Text(techGadgets[index].price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 5,),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.pink,
                            ),
                            child: const Align(
                              child: Text('Add to Cart', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Product List

                const SizedBox(height: 10,),
              // Title Category
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: const Text('Men Fashion', style: headerStyle),
              ),
              const SizedBox(height: 10,),
            
              SizedBox(
                height: 400,  // Adjust the height to fit your content
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menfashion.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 8),  // Add some spacing between items
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(menfashion[index].imageUrl, height: 200, width: 200, fit: BoxFit.cover,),
                          ),
                          const SizedBox(height: 10,),
                          Text(menfashion[index].name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 5,),
                          Text(techGadgets[index].description, style: const TextStyle(fontSize: 16), maxLines: 2, softWrap: true, overflow: TextOverflow.ellipsis,),
                          const SizedBox(height: 5,),
                          Text(techGadgets[index].price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 5,),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.pink,
                            ),
                            child: const Align(
                              child: Text('Add to Cart', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
