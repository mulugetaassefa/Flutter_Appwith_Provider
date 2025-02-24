import 'package:flutter/material.dart';
import 'dart:collection';  

// Product Model
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

// Cart Provider (State Management)
class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];  

  UnmodifiableListView<Product> get cartItems => UnmodifiableListView(_cartItems);  

  double get totalPrice => _cartItems.fold(0, (sum, item) => sum + item.price);

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.removeWhere((item) => item.name == product.name);  
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
