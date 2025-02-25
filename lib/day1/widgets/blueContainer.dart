import 'package:flutter/material.dart';

class Bluecontainer extends StatelessWidget {
  final double height,width;
  const Bluecontainer({super.key,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [const Color.fromARGB(255, 160, 204, 240),Colors.white])
      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          //blue text;
          Container(
            width: 2*(width/3)-10,
            child: Column(
              children: [
                SizedBox(height: height/8,),
                blueText(text: "App Exclusive Offer", fontSize: 20,fontWeight: FontWeight.bold,),
                blueText(text: "Application on recharge above 249", fontSize: 10,),
                SizedBox(height: height/16,),
                blueText(text: "Check Now >>", fontSize: 20,fontWeight: FontWeight.bold,),
                blueText(text: "T&C apply", fontSize: 10,),
                SizedBox(height: height/8,),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding:EdgeInsets.fromLTRB(0, height/4, 0, height/4),              
              child: Row(
                children: [
                  Text("2",style: TextStyle(fontSize: 60,color: Colors.orange),),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      blueText(text: "Get", fontSize: 30, fontWeight: FontWeight.bold),
                      blueText(text: "% OFF", fontSize: 30, fontWeight: FontWeight.bold,)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class blueText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const blueText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight=FontWeight.normal,
    });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(text,style: TextStyle(
      
        color: Colors.blue,fontSize: fontSize,fontWeight: fontWeight),),
    );
  }
}