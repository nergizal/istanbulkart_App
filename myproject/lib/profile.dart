import 'package:flutter/material.dart';

class ProfileBilgilerim extends StatefulWidget {
  const ProfileBilgilerim({super.key});

  @override
  State<ProfileBilgilerim> createState() => _ProfileBilgilerimState();
}

class _ProfileBilgilerimState extends State<ProfileBilgilerim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Nergiz Alıci",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.arrow_back_sharp)
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade300,
            height: 50,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Hesabım",style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.bold),),
            ),
          ),
ListView(
  children: [
    Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Text("Bilgilerim"),
    )
  ],
)
          
        ],
      ),
    );
  }
}