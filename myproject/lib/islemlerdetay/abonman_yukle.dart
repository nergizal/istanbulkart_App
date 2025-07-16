import 'package:flutter/material.dart';

class AbonmanYukle extends StatefulWidget {
  const AbonmanYukle({super.key});

  @override
  State<AbonmanYukle> createState() => _AbonmanYukleState();
}

class _AbonmanYukleState extends State<AbonmanYukle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Abonman Yükle",
          style: TextStyle(
            color: Color(0xFF2C2C4A),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF2C2C4A)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Yükleme Yapılacak Kart",
              style: TextStyle(
                color: Color(0xFF2C2C4A),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.error, color: Colors.red),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Kartın mevcut abonmanı bulunmaktadır, yeni bir abonman talimatı oluşturulamaz",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 220, 246, 247),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("resimler/h.png", width: 60, height: 60),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "6370600478403369",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF2C2C4A),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "0,63 TL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF2C2C4A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right, color: Color(0xFF2C2C4A)),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Text(
              "Ödeme Aracı",
              style: TextStyle(
                color: Color(0xFF2C2C4A),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(128, 250, 249, 249),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300, width: 3),
              ),
              child: Row(
                children: [
                  Image.asset("resimler/k.png", width: 30, height: 30),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Banka/kredi kartı seç",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF2C2C4A),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Ödeme yapmak istediğin kartını seç",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2C2C4A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_left_sharp, color: Color(0xFF2C2C4A)),
                ],
              ),
            ),

SizedBox(height: 40),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Toplam tutar",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    Text(
                      "0.00 TL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
Spacer(),
                SizedBox(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2C2C4A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                    
                    },
                    child: const Text(
                      "Ödemeye Geç",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
