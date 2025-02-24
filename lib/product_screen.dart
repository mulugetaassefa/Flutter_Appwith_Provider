import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
import 'cart_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: "iPhone 14", price: 999.99),
    Product(name: "MacBook Pro", price: 1299.99),
    Product(name: "Samsung S22", price: 899.99),
    Product(name: "AirPods", price: 199.99),
  ];

  @override
  Widget build(BuildContext context) {  
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(  
        title: Text("Product List"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );  
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,  
        itemBuilder: (context, index) {
          final product = products[index];  

          return ListTile(
            title: Text(product.name),
            subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
            trailing: ElevatedButton(
              onPressed: () {
                cart.addToCart(product);
                ScaffoldMessenger.of(context).showSnackBar(  
                  SnackBar(  
                    content: Text("${product.name} added to cart"),
                  ),
                );
              },
              child: Text("Add to Cart"),
            ),
          );
        },
      ),
    );
  }
}
