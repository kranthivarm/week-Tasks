import 'package:flutter/material.dart';

class Stackupperpart extends StatelessWidget {
  final double height,width;
  final int i;
  Stackupperpart({super.key, required this.height,required this.width,required this.i});
  List<String>names=[" Kranthi Vir"," Kabib "," takumora "," hajeme ippo "," ali "];
  

  @override
  Widget build(BuildContext context) {
    return Padding(      
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.4,width: width,),
          Row(
            children: [
              Expanded(child: SizedBox()),
              Column(
                children: [
                  IconContainer(height: width/8, width: width/8, icon: Icon(size: 40,Icons.thumb_up_outlined,color: Colors.white,)),
                  SizedBox(height: 10,),
                  IconContainer(height: width/8, width: width/8, icon: Icon(size: 40,Icons.thumb_down_outlined,color: Colors.white,)),
                  SizedBox(height: 10,),
                  IconContainer(height: width/8, width: width/8, icon: Icon(size: 40,Icons.comment_outlined,color: Colors.white,)),
                  SizedBox(height: 10,),
                  IconContainer(height: width/8, width: width/8, icon: Icon(size: 40,Icons.share_outlined,color: Colors.white,)),
                ],
              )
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Container(
                height: width/8,
                width: width/8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://m.media-amazon.com/images/M/MV5BMmIxOTE0ZjMtMDliMy00OTNjLWI5YmMtOTRjN2ZiMzJjOTU4XkEyXkFqcGc@._V1_.jpg"
                    ),
                    fit: BoxFit.cover                  
                  ),
                  shape: BoxShape.circle
                ),
              )
              ,Text(names[i],style: TextStyle(color: Colors.white,fontSize: 30),),
              Container(
                
                height: width/10 ,
                width: width/4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(child: Text("Subscribe",style: TextStyle(color: Colors.black,fontSize: 20),)),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text("He tells me when hes thirsty... ",style: TextStyle(color: Colors.white,fontSize: 20),)
        ]
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final double height,width;
  final Icon icon;
  const IconContainer({super.key,
    required this.height,
    required this.width,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [          
          icon,
          Text("Like" ,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}