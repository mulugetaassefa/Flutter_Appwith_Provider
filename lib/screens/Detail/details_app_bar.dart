import 'package:flutter/material.dart';
import 'package:flutterpro/constants.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: EdgeInsets.all(20),
      child: Row( children: [ 
        IconButton( 
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(Icons.arrow_back_ios)
        ),
        const Spacer(),
        IconButton( 
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(Icons.share_outlined)
        ),
        const SizedBox(width:10),
        IconButton( 
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(Icons.favorite)
        ),
      ],),
    );
  }
}