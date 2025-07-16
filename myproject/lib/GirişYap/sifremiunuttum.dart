import 'package:flutter/material.dart';
import 'package:myproject/Profil/sifremidegistir.dart';

class Sifremiunuttum extends StatefulWidget {
  const Sifremiunuttum({super.key});

  @override
  State<Sifremiunuttum> createState() => _SifremiunuttumState();
}

class _SifremiunuttumState extends State<Sifremiunuttum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şifremi Unuttum",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
        foregroundColor: Colors.black87,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),

      body: Column(children: [
        Center(child: Text("Bilgileri doldurarak şifreni yenileyebilirsin",style: TextStyle(fontSize: 15),)),
SizedBox(height: 40,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "TC Kimlik Numarası",
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
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Doğum Tarihi (GG.AA.YYYY)",
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
Spacer(),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF2C2C4A),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  onPressed: (){}, child: Text("Devam et",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
        ),
      ),
      ],),
    );
  }
}