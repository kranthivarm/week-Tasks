import 'package:flutter/material.dart';

class homeBackgroundImg extends StatelessWidget {
  final double height,width;
  const homeBackgroundImg({super.key, required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height:height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:NetworkImage(
            "https://i.pinimg.com/736x/f2/39/39/f23939b2fb93f80e75cc99673ea895a9.jpg",
            
          )
          ,fit: BoxFit.cover
        )
      ),      
    );
  }
}