import 'package:flutter/material.dart';
import 'package:myproject/Anasayfa/Anasayfa.dart';
import 'package:myproject/Profil/profile.dart';
import 'package:myproject/Giri%C5%9FYap/sifremiunuttum.dart';

class Sifremidegistir extends StatefulWidget {
  const Sifremidegistir({super.key});

  @override
  State<Sifremidegistir> createState() => _SifremidegistirState();
}

class _SifremidegistirState extends State<Sifremidegistir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text("Şifremi değiştir",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ProfileBilgilerim()));
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Mevcut şifreni gir",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade100),
              ),
              hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold)
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Yeni şifreni gir",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade100),
              ),
              hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold)
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Yeni şifreni tekrar gir",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade100),
              ),
              hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold)
            ),
          ),
        ),


   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6),
     child: DropdownButtonFormField<String>(
       decoration: InputDecoration(
      hintText: "Şifre değiştirme sıklığı",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white),
      ),
      filled: true,
      fillColor: Colors.white,
       ),
       items: [
      DropdownMenuItem(child: Text("3 ay"), value: "3"),
      DropdownMenuItem(child: Text("6 ay"), value: "6"),
       ],
       onChanged: (value) {},
     ),
   ),


Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.grey.shade200),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Şifren nasıl olmalı?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Yan yana beşten fazla tekrar eden (111111, 222222) ya da ardışık (123456) karakter içermemeli, doğum tarihi olmamalı ve 6 rakamdan oluşmalıdır",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              )
            ],
          ),
        ),
      ),

InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Sifremiunuttum()),);
  },
  child: Text("Şifremi Unuttum",style: TextStyle(color: Colors.blue),)),
SizedBox(height: 14,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87,),
              onPressed: (){}, child: Text("Onayla",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
        ),
      )
    ],
  ),
);}}