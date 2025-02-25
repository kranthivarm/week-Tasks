import 'package:flutter/material.dart';

class Orangecontainer extends StatelessWidget {
  final double height,width,fontSize;
  final Border containerBorder;
  final Color containerColor;
  final String text;
  final Color textCol;  
  const Orangecontainer({
    super.key,
    required this.height,
    required this.width,
    required this.containerBorder,
    required this.containerColor,
    required this.text,
    required this.textCol,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: containerBorder,
        color: containerColor,
        borderRadius: BorderRadius.circular(20)        
      ),
      child: Center(child: Text(text,style: TextStyle(color: textCol,fontSize: fontSize),)),
    );
  }
}