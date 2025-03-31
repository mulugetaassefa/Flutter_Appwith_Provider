import 'package:flutter/material.dart';
import 'package:flutterpro/constants.dart';
import 'package:flutterpro/screens/Cart/cart_screen.dart';
import 'package:flutterpro/screens/Home/favorite.dart';
import 'package:flutterpro/screens/Home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex =2;
     List screens = const [
            Scaffold(),
            Favorite(),
            HomeScreen(),
            CartScreen(),
            Scaffold(),   
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          currentIndex =2;
       
        });
        
      },
      shape: const CircleBorder(),
       child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kprimaryColor,
      
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         IconButton(
              onPressed: () {
                setState(() {
                  currentIndex =0;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 23,
                color: currentIndex ==0 ? kprimaryColor:Colors.grey.shade400,
              ),
         ),
          IconButton(
              onPressed: () {
                setState(() {
                  currentIndex=1;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 23,
                color: currentIndex ==1 ? kprimaryColor:Colors.grey.shade400,
              ),
         ),
          IconButton(
              onPressed: () {
                setState(() {
                  currentIndex =2;
                });
              },
              icon: Icon(
                Icons.favorite_outlined,
                size: 23,
                color: currentIndex ==2 ? kprimaryColor:Colors.grey.shade400,
              ),
         ),
         SizedBox(width: 15),
          IconButton(
              onPressed: () {
                currentIndex=3;
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 23,
                color: currentIndex ==3 ? kprimaryColor:Colors.grey.shade400,
              ),
         ),
          IconButton(
              onPressed: () {
                currentIndex=4;
              },
              icon: Icon(
                Icons.person,
                size: 23,
                color: currentIndex == 4 ? kprimaryColor:Colors.grey.shade400,
              ),
         ),

        ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}