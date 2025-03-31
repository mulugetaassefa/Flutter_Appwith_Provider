class Product {
  final String name;
  final String title;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.title,
    required this.price,
    required this.imageUrl,
  });
}

// Example Product List (Mock Data)
List<Product> demoProducts = [
  Product(
    name: "Laptop",
    title: "Gaming Laptop",
    price: 1299.99,
    imageUrl: "assets/images/laptop.png",
  ),
  Product(
    name: "Smartphone",
    title: "Latest Smartphone",
    price: 999.99,
    imageUrl: "assets/images/smartphone.png",
  ),
  Product(
    name: "Headphones",
    title: "Wireless Headphones",
    price: 199.99,
    imageUrl: "assets/images/headphones.png",
  ),
  Product(
    name: "Smart Watch",
    title: "Fitness Smart Watch",
    price: 299.99,
    imageUrl: "assets/images/smartwatch.png",
  ),
];
