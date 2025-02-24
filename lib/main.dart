import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
import 'product_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),  // ✅ Removed semicolon
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  // ✅ Fixed typo
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),  // ✅ Fixed incorrect widget name
    );
  }
}
