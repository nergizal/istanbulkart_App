import 'package:flutter/material.dart';
import 'package:myproject/islemlerdetay/para_transferi_yap.dart';
import 'package:myproject/islemlerdetay/tl_yukle.dart';
import 'package:myproject/Qr/qr_2.dart';
import 'package:myproject/Qr/qrildeode.dart';
import 'package:myproject/Islemler/tl_yukle_2.dart';

class DijitalHesabimSayfasi extends StatelessWidget {
  const DijitalHesabimSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      backgroundColor: Colors.white,
      body: Column(
        
        children: [
          // Üst mavi alan
         // Üst mavi alan
    Container(
      width: double.infinity,
      decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF0A5EFF), Color(0xFF60A3F6)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
      ),
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      child: Stack(
    children: [

      Positioned(
        top: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Image.asset(
            "resimler/kalp.png",
            height:200,
           // fit: BoxFit.cover,
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
              const Spacer(),
              const Icon(Icons.settings, color: Colors.white),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Dijital hesabım",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text("Dijital hesap bakiyem",
              style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 6),
          const Text(
            "21,38 TL",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          const Text("IBAN", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 6),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              "Oluştur",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ],
      ),
    ),
    
    
          
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 70,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.calendar_today, color: Color(0xFF0A5EFF)),
                              SizedBox(width: 6),
                              Text("Son İşlemler",
                                  style: TextStyle(fontSize: 13, color: Color(0xFF2C2C4A),fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 70,
                          margin: const EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.warning_sharp, color: Color(0xFF0A5EFF)),
                              SizedBox(width: 6),
                              Text("Acil Limit'i aç",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13, color: Color(0xFF2C2C4A),)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
    
                  const SizedBox(height: 28),
    
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("İşlem önerileri",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2C2C4A))),
                      Text("Tümünü gör",
                          style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.underline,
                              fontSize: 13)),
                    ],
                  ),
    
                  const SizedBox(height: 20),
    
                  
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>(Qr2())));
                        },
                        child: Container(
                          width: 160,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.qr_code_2, color: Color(0xFF0A5EFF)),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text("QR ile öde",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2C2C4A))),
                              ),
                        
                              
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 160,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.shopping_bag, color: Color(0xFF0A5EFF)),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text("Alışverişte karekod ile öde",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF2C2C4A))),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>(TlYukle())));
                        },
                        child: Container(
                          width: 160,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.upload, color: Color(0xFF0A5EFF)),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text("TL yükle",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2C2C4A))),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>GonderimYontemiSecimi()));
                        },
                        child: Container(
                          width: 160,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.sync_alt, color: Color(0xFF0A5EFF)),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text("Para transferi",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2C2C4A))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
    
                  const SizedBox(height: 32),
    
                  
                  const Text("Dijital hesabıma bağlı kartlar",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2C2C4A))),
                  const SizedBox(height: 16),
    
                 
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("resimler/h.png",
                              height: 50, width: 40, fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sanal Kart", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("5303 41** **** 4276", style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ),
                        const Icon(Icons.chevron_right, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
