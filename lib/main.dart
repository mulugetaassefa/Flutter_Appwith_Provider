import 'package:flutter/material.dart';
import 'package:flutterpro/screens/nav_bar_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yegna Trading App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:BottomNavBar(),
    );
  }
}
