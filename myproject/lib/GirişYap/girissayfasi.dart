import 'package:flutter/material.dart';
import 'package:myproject/Giri%C5%9FYap/loginpage.dart';

class Girissayfasi extends StatefulWidget {
  const Girissayfasi({super.key});

  @override
  State<Girissayfasi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Girissayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    },
    child: SizedBox.expand(
      child: Image.asset(
        "resimler/giris.png",
        fit: BoxFit.cover,
      ),
    ),
  ),
);


  }
}