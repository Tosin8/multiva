class TechGadget {
  String name;
  String description;
  String imageUrl;
  String price; 

  TechGadget({required this.name, required this.description, required this.imageUrl, required this.price});
}

final techGadgets = <TechGadget>[
  TechGadget(
   name: "Hp Envy 300",
   description: 'The HP Envy is a line of sleek, high-performance laptops known for their stylish design, powerful hardware, and advanced features. The series comes in various sizes, with options for both everyday use and demanding tasks such as gaming or creative work.', 
     
     imageUrl: "assets/images/1.jpg",
     price: "#10,000"),
]; 