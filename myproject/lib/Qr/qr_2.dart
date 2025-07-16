import 'package:flutter/material.dart';

class Qr2 extends StatefulWidget {
  const Qr2({super.key});

  @override
  State<Qr2> createState() => _QrildeodeState();
}

class _QrildeodeState extends State<Qr2> {
  int aktifIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Row(
                children: [
                 Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child:  Icon(Icons.close, size: 28, color: Colors.black87),
                  ),
                ],
              ),

               SizedBox(height: 24),

             Text(
                "Ulaşım için QR göster ve öde",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF2C2C4A)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
Text(
                "QR kodunu cihaza okut",
                style: TextStyle(fontSize: 15, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
 SizedBox(height: 30),

              Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset("resimler/kod.png", fit: BoxFit.cover),
              ),

 SizedBox(height: 25),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("21,38",
                      style: TextStyle(
                          color: Color(0xFF2C2C4A),
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                  SizedBox(width: 4),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text("TL",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
             SizedBox(height: 4),
             Text("Mevcut Bakiyen", style: TextStyle(color: Colors.black54)),
 SizedBox(height: 24),


              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            aktifIndex = 0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: aktifIndex == 0
                                ? const Color(0xFF2C2C4A)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "QR göster",
                              style: TextStyle(
                                color: aktifIndex == 0
                                    ? Colors.white
                                    : Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

 SizedBox(width: 8),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            aktifIndex = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: aktifIndex == 1
                                ? const Color(0xFF2C2C4A)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "QR okut",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: aktifIndex == 1
                                    ? Colors.white
                                    : Colors.black45,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
SizedBox(height: 32),

              
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (_) => DigerQrIslemleri()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF2C2C4A),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Diğer QR işlemleri",
                        style: TextStyle(
                          color: Color(0xFF2C2C4A),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward_ios,
                          size: 16, color: Color(0xFF2C2C4A)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
