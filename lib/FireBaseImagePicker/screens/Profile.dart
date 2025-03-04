import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:weektasks/FireBaseImagePicker/screens/EditProfileScreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 

   String image="",name="Gojo",profession="sorcer",phoneNum="73402874";
   final _firestore = FirebaseFirestore.instance;

   void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    var userDoc = await _firestore.collection("users").doc("user_profile").get();
    if (userDoc.exists) {
      setState(() {
        name= userDoc["name"] ?? name;
        profession= userDoc["profession"] ?? profession;
        phoneNum = userDoc["phoneNum"] ?? phoneNum;
        image = userDoc["imgPath"]?? image;        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size siz=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 194, 208),
      appBar: AppBar(title:
        Center(child: Text("Image Picking ")),
        backgroundColor: const Color.fromARGB(255, 235, 194, 208),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: siz.width/3,
              width: siz.width/3,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 125, 205, 128),width: 3),
                color: const Color.fromARGB(255, 231, 176, 194),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: image=="" ?NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQerR8U1_XGDJmlAUxDf0sCNimOVJDy0Y27Ng&s"):NetworkImage(image)
                )
              ),
              // child: img==null? :img,
            ),
            
            Center(
              child: Column(
                children: [
                  Text(name,style: TextStyle(color: Colors.blue,fontSize: 15),),
                  SizedBox(height: 10,),
                  Text(profession,style: TextStyle(color: Colors.blue,fontSize: 15),),
                  SizedBox(height: 10,),
                  Text(phoneNum,style: TextStyle(color: Colors.blue,fontSize: 15),),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>imageChanger()));
            }, child: Text("Update")),
          ],
        ),
      ),
    );
  }
}