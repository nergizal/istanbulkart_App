import 'package:flutter/material.dart';
import 'package:myproject/Hesap/Kart/dijital_hesabim.dart';

class HesapKartSayfasi extends StatefulWidget {
  const HesapKartSayfasi({super.key});

  @override
  State<HesapKartSayfasi> createState() => _HesapKartSayfasiState();
}

class _HesapKartSayfasiState extends State<HesapKartSayfasi> {
  int aktifIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F3F6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() => aktifIndex = 0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: aktifIndex == 0 ? const Color(0xFF2C2C4A) : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Hesabım",
                                style: TextStyle(
                                  color: aktifIndex == 0 ? Colors.white : Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() => aktifIndex = 1),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: aktifIndex == 1 ? const Color(0xFF2C2C4A) : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Kartlarım",
                                style: TextStyle(
                                  color: aktifIndex == 1 ? Colors.white : Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  if (aktifIndex == 0) ...[
                    const Text(
                      "Dijital hesabım",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C2C4A),
                      ),
                    ),
                    const SizedBox(height: 10),

                    GestureDetector(
                       onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DijitalHesabimSayfasi()));
                      },
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF1B6EFE), Color(0xFF68A9FF)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                child: Image.asset("resimler/b.png", height: 100),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dijital", style: TextStyle(color: Colors.white, fontSize: 18)),
                                  Text("hesabım", style: TextStyle(color: Colors.white, fontSize: 18)),
                                ],
                              ),
                              const SizedBox(width: 6),
                              const VerticalDivider(color: Colors.white54, thickness: 1),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Toplam Bakiyem", style: TextStyle(color: Colors.white, fontSize: 14)),
                                    SizedBox(height: 6),
                                    Text("21,38 TL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
                                  ],
                                ),
                              ),
                              const Icon(Icons.chevron_right, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Hesabıma Bağlı Kartlar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C2C4A),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text("Sanal Kartım", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF3D3D3D),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset("resimler/h.png", width: 80, height: 60, fit: BoxFit.cover),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Sanal Kart", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                                SizedBox(height: 6),
                                Text("5303 41** **** 4276", style: TextStyle(color: Colors.white70)),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right, color: Colors.white),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text(
                        "Akıllı yaşamayı sevdiğini biliyoruz ve\nseni yeni sanal kartınla tanıştırmak istiyoruz.",
                        style: TextStyle(fontSize: 16, color: Color(0xFF2C2C4A)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF1B1E3C), width: 1.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Detaylar",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1B1E3C), fontSize: 16),
                        ),
                      ),
                    )
                  ] else ...[
                    const SizedBox(height: 20),
                    const Text("İstanbulkartlar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF2C2C4A))),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Benim kartlarım", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                        Text("+ Kart ekle", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 100,
                      width: 350,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 198, 237, 237),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset("resimler/i.png", width: 60, height: 60),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text("6370600478403369", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF2C2C4A))),
                                ),
                                SizedBox(height: 20),
                                Text("0,63 TL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF2C2C4A))),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right, color: Color(0xFF2C2C4A)),
                        ],
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
