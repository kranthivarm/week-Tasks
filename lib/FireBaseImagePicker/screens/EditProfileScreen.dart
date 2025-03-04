import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:weektasks/FireBaseImagePicker/screens/Profile.dart';

class imageChanger extends StatefulWidget {
  @override
  _imageChangerState createState() => _imageChangerState();
}

class _imageChangerState extends State<imageChanger> {
  final _firestore = FirebaseFirestore.instance;
  final ImagePicker _picker = ImagePicker();

  TextEditingController nameCtrl = TextEditingController(),
   professionCtrl = TextEditingController(),
   phoneNumCtrl = TextEditingController(),
   imgCtrl = TextEditingController();

  String? img;

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    var userDoc = await _firestore.collection("users").doc("user_profile").get();
    if (userDoc.exists) {
      setState(() {
        nameCtrl.text = userDoc["name"] ?? "";
        professionCtrl.text = userDoc["profession"] ?? "";
        phoneNumCtrl.text = userDoc["phoneNum"] ?? "";
        img = userDoc["imgPath"];
        imgCtrl.text = img ?? "";
      });
    }
  }

  // Future<void> _updateProfile

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
            GestureDetector(
              onTap:  ()async {
                  final selectedImg = await _picker.pickImage(source: ImageSource.gallery);
                  if (selectedImg != null) {
                    setState(() {
                      img = selectedImg.path;
                      imgCtrl.text = img!;
                    });
                  }
                },
                
              child: Container(
                height: siz.width/3,
                width: siz.width/3,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 125, 205, 128),width: 3),
                  color: const Color.fromARGB(255, 231, 176, 194),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: img==null ?NetworkImage("https://cdn-icons-png.flaticon.com/512/3135/3135715.png"):NetworkImage(img!)
                  )
                ),
                // child: img==null? :img,
              ),
            ),
            TextField(controller: imgCtrl, decoration: InputDecoration(labelText: "ImagePath")),
            TextField(controller: nameCtrl, decoration: InputDecoration(labelText: "Name")),
            TextField(controller: professionCtrl, decoration: InputDecoration(labelText: "Profession")),
            TextField(controller: phoneNumCtrl, decoration: InputDecoration(labelText: "PhoneNumber")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                  await _firestore.collection("users").doc("Profile").set({
                    "name": nameCtrl.text,
                    "profession": professionCtrl.text,
                    "phoneNum": phoneNumCtrl.text,
                    "imgPath": imgCtrl.text, 
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("done")));
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
               child: Text("Update")
          ),
          ],
        ),
      ),
    );
  }
}