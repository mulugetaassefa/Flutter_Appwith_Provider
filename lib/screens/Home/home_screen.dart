import 'package:flutter/material.dart';
import 'package:flutterpro/screens/Home/widget/home_app_bar.dart';
import 'package:flutterpro/screens/Home/widget/image_slider.dart';
import 'package:flutterpro/screens/Home/widget/search_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class   _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;

  // Dummy products list (Replace with actual data)
  final List products = ["Product 1", "Product 2", "Product 3", "Product 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const CustomAppBar(), 
              const SizedBox(height: 20),
              const MySearchBar(), // 
              const SizedBox(height: 20),

              // Image slider
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 10),

              // Categories Section Title
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Special For You",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle "See All" action
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),

              // Shopping Items Grid
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length, 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,    
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(products[index]), // Example product display
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
