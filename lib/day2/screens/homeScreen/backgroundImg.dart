import 'package:flutter/material.dart';

class homeBackgroundImg extends StatelessWidget {
  final double height,width;
  final i;
  const homeBackgroundImg({super.key, required this.height,required this.width,required this.i});

  @override
  Widget build(BuildContext context) {
  List<String>imgs=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7gKGBD_EJxzZ1RHFwr3OGPbNZ-MOVHcbv9g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLi6eoi24dXFhTCnDFnl7AAIuR8vogCU4WDw&s",
    "https://i.pinimg.com/736x/f2/39/39/f23939b2fb93f80e75cc99673ea895a9.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO5dFFSlpxJDNCh7fWqMqkn5CXIBGeEyhg93MgSv_o6dtvKi6Rmcwu10mIP3VG5TanmyU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCykC3609eVYUKXp-ooBIppqQA424UYP485Q&s"
  ];
    
    return Container(
      height:height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:NetworkImage(
            imgs[i],
            
          )
          ,fit: BoxFit.cover
        )
      ),      
    );
  }
}