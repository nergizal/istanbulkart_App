import 'package:flutter/material.dart';

class DoluDoluTLYukle extends StatelessWidget {
  const DoluDoluTLYukle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2C2C4A)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Dolu dolu TL yükle",
          style: TextStyle(
            color: Color(0xFF2C2C4A),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dolu dolu TL nedir?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                //color: Color(0xFF2C2C4A),
              ),
            ),
      SizedBox(height: 10),
          Text(
              '"Dolu Dolu TL Yükle" ile 5.000 TL\'ye kadar uygun faizlerle Fibabanka tüketici kredisine başvurabilirsin.',
              style: TextStyle(
                fontSize: 14,
                //color: Color(0xFF4C4C6A),
              ),
            ),
       SizedBox(height: 30),
          Text(
              "Sana özel kampanyalar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                //color: Color(0xFF2C2C4A),
              ),
            ),
         SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(Icons.radio_button_unchecked, color: Colors.grey),
                   SizedBox(width: 12),
       
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "resimler/f.png",
                          width: 100,
                          height: 30,
                          fit: BoxFit.contain,
                        ),
                       SizedBox(height: 4),
                        Row(
                          children: const [
                            Text(
                              "Kampanya detayı",
                              style: TextStyle(
                                color: Color(0xFF2C2C4A),
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.chevron_right, size: 18, color: Color(0xFF2C2C4A)),
                          ],
                        )
                      ],
                    ),
                  ),
                
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Faiz oranı",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "% 4,90",
                        style: TextStyle(
                          color: Color(0xFF4CAF50), 
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

         Spacer(),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2C2C4A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  // Devam et aksiyonu
                },
                child: const Text(
                  "Devam et",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
