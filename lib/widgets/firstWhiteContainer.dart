import 'package:flutter/material.dart';
import 'package:weektasks/widgets/OrangeContainer.dart';

class Firstwhitecontainer extends StatelessWidget {  
  final double height,width;
  const Firstwhitecontainer({super.key ,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                height: height/2,
                        
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [                                      
                                    Container(height:height/2 ,width: 40,
                                      child: Center(child: Transform.rotate(angle: -1.55,child: Icon(Icons.compare_arrows),))),
                                    Text("- ",style: TextStyle(color: Colors.pink,fontSize:30),),
                                    Container(height: 50,width: 1,decoration: BoxDecoration(border: Border.all(color: Colors.grey)),),
                                    SizedBox(width: 10,),
                                    Center(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 10,),
                                          Text("0 Pack"),
                                          SizedBox(height: 5,),
                                          Text("Expired",style: TextStyle(color: Colors.pink),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Orangecontainer(height: 30, width: 100, containerBorder: Border.all(color: Colors.orange), containerColor: Colors.white, text: "View Pack", textCol: Colors.orange, fontSize: 15),
                                      SizedBox(width: 20,),
                                      Orangecontainer(height: 30, width: 100, containerBorder: Border.all(color: Colors.orange), containerColor: Colors.orange, text: "Recharge", textCol: Colors.white, fontSize: 15)
                                    ],
                                  ),                          
                                                          
                            ],
                          ),
                        );
  }
}