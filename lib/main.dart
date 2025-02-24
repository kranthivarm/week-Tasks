import 'package:flutter/material.dart';
import 'package:weektasks/widgets/OrangeContainer.dart';
import 'package:weektasks/widgets/blueContainer.dart';
import 'package:weektasks/widgets/firstWhiteContainer.dart';
import 'package:weektasks/widgets/gridIcons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orange,Colors.white,Colors.white]
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width/8, (size.width/8), size.width/8, 0),
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Good Afternoon , prasad ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      // Icon(Icons.)
                    ],
                  ),
                  Row(
                    children: [
                      Text("9618566951",style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),),
                      Orangecontainer(height: 20, width: 100, containerBorder: Border.all(color: Colors.orange), containerColor: Colors.white, text: "Prepaid", textCol: Colors.orange,fontSize: 10,)
                    ],
                  ),
                  SizedBox(height: 10,),




                  //pink container
                  Container(
                    height: 180,
                    width: size.width- 2*(size.width/8),
                    // color: Colors.pink[200],
                    
                    child: Column(
                      children: [
                        
                        Firstwhitecontainer( height: 150,
                          width: size.width- 2*(size.width/8),
                        ),
                        Container(
                          width: size.width- 2*(size.width/8),
                          height: 30,
                          color:  Colors.pink[50],
                          child: Row(
                            children: [
                              Text("uh-oh! Your plan has expired Recharge now. ",style: TextStyle(color: const Color.fromARGB(255, 221, 11, 81)),),
                              Text("Recharge",style: TextStyle(color: Colors.blue[900]),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  //blue container
                  Bluecontainer(height: 200,  width: size.width- 2*(size.width/8),),
                  SizedBox(height: 10,),
                  //gridIcons
                  Gridicons(height: 200, width: size.width- 2*(size.width/8),)

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


