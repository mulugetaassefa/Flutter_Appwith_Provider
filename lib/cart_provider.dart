import 'package:flutter/material.dart';
import 'dart:collection';  // ✅ Added for UnmodifiableListView

// Product Model
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

// Cart Provider (State Management)
class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];  // ✅ Made final to prevent reassignment

  UnmodifiableListView<Product> get cartItems => UnmodifiableListView(_cartItems);  // ✅ Prevents direct modifications

  double get totalPrice => _cartItems.fold(0, (sum, item) => sum + item.price);

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.removeWhere((item) => item.name == product.name);  // ✅ Removes all occurrences of a product
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
