import 'package:flutter/material.dart';
import 'package:weektasks/day2/screens/homeScreen/homeScreen.dart';

class Day2homepage extends StatefulWidget {
  const Day2homepage({super.key});

  @override
  State<Day2homepage> createState() => _Day2homepageState();
}

class _Day2homepageState extends State<Day2homepage> { 
  // final double hei=0, wi=0;
  int presentIndex = 0; 

  
  final List<Widget> bodyScreens = [
    Homescreen(),
    Center(child: Text("shorts", style: TextStyle(fontSize: 24))),
    Center(child: Text("adding", style: TextStyle(fontSize: 24))),
    Center(child: Text("subscriptions", style: TextStyle(fontSize: 24))),
    Center(child: Text("Account", style: TextStyle(fontSize: 24))),
  ];

  void changeIndex(int index) {
    setState(() {
      presentIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    double hei=MediaQuery.of(context).size.height;
    double wi=MediaQuery.of(context).size.width;
    return Scaffold(
      body: bodyScreens[presentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: presentIndex,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: (presentIndex==0)?Icon(Icons.home_filled,color: Colors.white,):Icon(Icons.home_outlined,color: Colors.white,),
            label: "Home",            
          ),
          BottomNavigationBarItem(
            icon: (presentIndex==1)?Icon(Icons.monetization_on,color: Colors.white,):Icon(Icons.monetization_on_outlined,color: Colors.white,),
            label: "shorts",            
          ),
          BottomNavigationBarItem(
            icon: (presentIndex==2)?Icon(Icons.add,color: Colors.white,):Icon(Icons.add,color: Colors.white,), 
            label: " ",            
          ),
          BottomNavigationBarItem(
            icon: (presentIndex==3)?Icon(Icons.subscriptions,color: Colors.white,):Icon(Icons.subscriptions_outlined,color: Colors.white,),
            label: "Subscriptions",            
          ),
          BottomNavigationBarItem(
            icon: (presentIndex==4)?Icon(Icons.person,color: Colors.white,):Icon(Icons.person_outline,color: Colors.white,),
            label: "Account",            
          ),
          
        ],
        onTap: changeIndex,
        
      ),
    );
  }
}

