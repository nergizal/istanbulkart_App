import 'package:flutter/material.dart';
import 'package:myproject/Anasayfa/Anasayfa.dart';
import 'package:myproject/Giri%C5%9FYap/sifremi_unuttum.dart';
import 'package:myproject/Giri%C5%9FYap/sifremiunuttum.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
   List<TextEditingController> controllers =
      List.generate(6, (_) => TextEditingController());
      final String dogruSifre = "123456";



      void _validatePassword() {
    String girilenSifre = controllers.map((c) => c.text).join();

    if (girilenSifre == dogruSifre) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Anasayfa()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Hatalı şifre. Lütfen tekrar deneyin."),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
@override
  void dispose() {
    for (var e in controllers) {
      e.dispose();
    }
    super.dispose();
  }
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Column(
        
        children: [
          Center(child: Image.asset("resimler/unnamed.png",height: 100,)),
          Text("Nergiz Alıci",style: TextStyle(fontSize: 16,color: Colors.black54),),
          Text("Beni unut",style: TextStyle(color: Colors.black54),),
          SizedBox(height: 30,),
          Text("Giriş yapmak için şifreni gir",style: TextStyle(color: Colors.black87,fontSize:18,fontWeight: FontWeight.bold),),
SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: List.generate(6, (index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        width: 40,
        height: 40,
        child: TextField(
          controller: controllers[index], 
          textAlign: TextAlign.center,
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: "", // karakter sayacı gizle
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }),
),

          ),
SizedBox(height: 8,),
InkWell(
  onTap: _validatePassword, 
  child: Text(
    "Giriş Yap",
    style: TextStyle(
      
      fontSize: 17,
      color: Colors.blueAccent,
      fontWeight: FontWeight.bold
      
    ),
  ),
),

SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sifremiunuttum()));
            },
            child: Text("Şifremi Unuttum",style: TextStyle(color: Colors.blueAccent,),))
        ],
        
      ),
    );
  }
}

class LoginSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Başarılı Giriş")),
      body: Center(
        child: Text(
          "Giriş başarılı!",
          style: TextStyle(fontSize: 24, color: Colors.green),
        ),
      ),
    );
  }
}