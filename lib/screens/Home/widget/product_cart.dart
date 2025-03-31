import 'package:flutter/material.dart';
import 'package:flutterpro/constants.dart';
import 'package:flutterpro/models/product.dart';
import 'package:flutterpro/screens/Detail/detail_screen.dart';

class Product extends StatelessWidget {
  final Product product;
  const  Product({super.key});

  @override
  Widget build(BuildContext context) {
  return GestureDetector( 
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (contex)=>DetailScreen()))
    },
    child: Stack(children: [
      Container(  
        width: double.infinity,
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(20),
          color: kcontentColor,
        ),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
           SizedBox(height:15,),
           Center(child:
            Image.asset(
              product.image,
              width:130,
              fit:BoxFit.cover,
            ),
            )
          ],
        ),
      )
    ],),
  );
  }
}