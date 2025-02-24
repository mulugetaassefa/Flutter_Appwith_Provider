import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.cartItems.length,
              itemBuilder: (context, index) {
                final product = cart.cartItems[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      cart.removeFromCart(product);
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 1, child: Divider()),  // ✅ Fixed Divider issue
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Total: \$${(cart.totalPrice ?? 0.0).toStringAsFixed(2)}",  // ✅ Fixed null safety issue
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: cart.cartItems.isEmpty
                ? null
                : () {
                    cart.clearCart();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Purchase Successful!")),
                    );
                  },
            child: Text("Checkout"),
          ),
        ],
      ),
    );
  }
}
