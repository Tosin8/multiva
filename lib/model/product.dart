class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  int quantity; // Ensure this property is mutable

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.quantity = 1, // Default quantity is 1
  });
}
