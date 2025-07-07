import 'package:flutter/material.dart';

class Bilgilerimsayfasi extends StatelessWidget {
  const Bilgilerimsayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilgilerim"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Kimlik Bilgilerim",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
            ),
            
          ),
          Divider(height: 5,
          thickness: 1,),
          ListTile(
            title: Text("Ad Soyad",style: TextStyle(fontSize: 10),),
            subtitle: Text("Nergiz Alıci",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Divider(height: 5,
          thickness: 1,),
          ListTile(
            title: Text("TC ya da Yabancı Kimlik Numarası",style: TextStyle(fontSize: 10),),
            subtitle: Text("12345678910",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
             Divider(height: 5,
          thickness: 1,),
          ListTile(
            title: Text("Doğum Tarihi",style: TextStyle(fontSize: 10),),
            subtitle: Text("17.11.2004",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
             Divider(height: 5,
          thickness: 1,),
          ListTile(
            title: Text("Meslek",style: TextStyle(fontSize: 10),),
            //subtitle: Text("12345678910",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Divider(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("İletişim Bilgileri",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
            ),
          ),
          Divider(height: 20,),
          ListTile(
            title: Text("Cep Telefonu",style: TextStyle(fontSize: 10),),
            subtitle: Text("5416771591",style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          Divider(height: 5,),
          ListTile(
            title: Text("E-posta",style: TextStyle(fontSize: 10),),
            subtitle: Text("nergizalici65@gmail.com",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Divider(height: 5,),
          ListTile(
            //title: Text("Adreslerim",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
            subtitle: Text("Adreslerim",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
          ),
          Divider(height: 5,),
        
         
        ],
        
        
        
      ),
    );
  }
}