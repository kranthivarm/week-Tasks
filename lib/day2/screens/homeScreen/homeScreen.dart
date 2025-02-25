import 'package:flutter/material.dart';
import 'package:weektasks/day2/screens/homeScreen/backgroundImg.dart';
import 'package:weektasks/day2/screens/homeScreen/stackUpperPart.dart';

class Homescreen extends StatelessWidget {
  // final double height,width;
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(height: size.height*0.1,
            color: Colors.black,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Text(" Shorts",style: TextStyle(color: Colors.white,fontSize: 30),),
                    Expanded(child: SizedBox(),),
                    Icon(Icons.search,color: Colors.white,size: 40,),
                    SizedBox(width: 10,),
                    Icon(Icons.more_vert,color: Colors.white,size: 40,)
                
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              homeBackgroundImg(height:size.height*0.84,width:size.width),
              Stackupperpart(height: size.height*0.84, width: size.width)
            ],
          )
        ],
      ),
    );
}
}