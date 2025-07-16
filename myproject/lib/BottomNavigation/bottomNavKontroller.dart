// bottomNavController.dart
import 'package:flutter/material.dart';
import 'package:myproject/Anasayfa/Anasayfa.dart';
import 'package:myproject/Islemler/islemler.dart';
import 'package:myproject/Bul/bul.dart';
import 'package:myproject/Hesap/Kart/hesap_kart.dart';
//import 'package:myproject/mesajlarim.dart';
import 'package:myproject/Profil/profile.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Anasayfa(),
    Islemler(),
    HesapKartSayfasi(),
    BulSayfasi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.compare_arrows), label: "İşlemler"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Mesajlarım"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
