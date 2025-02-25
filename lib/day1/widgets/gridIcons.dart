import 'package:flutter/material.dart';
import 'package:weektasks/day1/widgets/blueContainer.dart';


class Gridicons extends StatelessWidget {
  final double height,width;
  const Gridicons({super.key,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height+20,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color.fromARGB(255, 236, 231, 231),width: 2)
      ),
      child:Column(
          children: [
            SizedBox(height: 20,),
            blueText(text: "      Quick Actions", fontSize: 15,fontWeight: FontWeight.bold,),
            RowOfIcons(height: height/3, width: width-4, icons: [
              Icon(Icons.access_alarm),
              Icon(Icons.compare_arrows),
              Icon(Icons.cabin),
              Icon(Icons.pedal_bike),
            ], text: [
              "Recharge","payBill","Landline","Book Fiber"
            ]),
            SizedBox(height: 20,),
            RowOfIcons(height: height/3, width: width-4, icons: [
              Icon(Icons.bike_scooter),
              Icon(Icons.car_crash),
              Icon(Icons.airport_shuttle),
              Icon(Icons.people_outline),
            ], text: [
              "upgrade ","number","don't disturb","Games"
            ]),
            SizedBox(height: 20,)
          ],
        ) ,    
    );
  }
}


class RowOfIcons extends StatelessWidget {
  final double height,width,cnt;
  final List<Icon>icons;
  final List<String>text;
  const RowOfIcons({super.key,required this.height,required this.width,this.cnt=4,required this.icons,required this.text});

  @override
  Widget build(BuildContext context) {
    List<Widget>lsIcons=[];
    for(int i=0;i<cnt;i++){
      lsIcons.add(
        Padding(
          // padding: EdgeInsets.fromLTRB(width/8, height/6, width/8, height/6),
          padding: EdgeInsets.all(0),
          child: Container(
            height: height,
            width: width/4,
            child: Column(
              children: [
                Center(
                  child: Container(  
                    height: 3*(height/4),  
                    width: width/4,              
                    decoration: BoxDecoration(color: Colors.grey[100],shape: BoxShape.circle),
                    child: icons[i],
                  ),
                ),
                Container(height:height/4,child: Text(text[i],style: TextStyle(color: Colors.grey),))
              ],
            ),
          ),
        )
      );
    }
    return Row(
      children: lsIcons,
    );
  }
}