import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final String  image;
  final Function(int) onChange;
 
  const ImageSlider({super.key, 
  required this.image,
   required this.onChange});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(  
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder:(context,index) {
          return Image.asset(" ");
        }
      ),
    );
  }
}