import 'package:flutter/material.dart';
import 'package:weektasks/day2/screens/homeScreen/backgroundImg.dart';
import 'package:weektasks/day2/screens/homeScreen/stackUpperPart.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


    final PageController pgctrl=PageController();

  // List<Widget>ls=[];
  // int presentPageViewIndex=0;
  // List<Widget> pageviewList(int cnt,double hei,double wi){    
  //   for(int index=0;index<cnt;index++){
  //     ls.add(Stack(
  //         children: [
  //           homeBackgroundImg(height:hei*0.84,width:wi,i:index),
  //           Stackupperpart(height:hei*0.84, width: wi,i:index)
  //         ],
  //       )
  //     );
  //   }
  //   return ls;
  // }
  
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    // pageviewList(5, size.height, size.height);
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
          // PageView(
          //   children:ls,
          //   scrollDirection: Axis.horizontal,
          //   controller: pgctrl,
          //   onPageChanged: (num){
          //     setState(() {
          //       presentPageViewIndex=num;
          //     });
          //   }
          // )
          Container(
            height:size.height*0.84,width:size.width,
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context,index){              
                return Stack(
                  children: [
                    homeBackgroundImg(height:size.height*0.84,width:size.width,i:index),
                    Stackupperpart(height:size.height*0.84, width: size.width,i:index)
                  ],
                );
              },
              scrollDirection: Axis.vertical,
            ),
          )
          
        ],
      ),
    );
}
}

//Stack(
          //   children: [
          //     homeBackgroundImg(height:size.height*0.84,width:size.width),
          //     Stackupperpart(height: size.height*0.84, width: size.width)
          //   ],
          // )