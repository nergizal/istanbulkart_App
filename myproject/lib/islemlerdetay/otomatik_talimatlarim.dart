import 'package:flutter/material.dart';

class OtomatikTalimatlarim extends StatelessWidget {
  const OtomatikTalimatlarim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2C2C4A)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Otomatik talimatlarım",
          style: TextStyle(
            color: Color(0xFF2C2C4A),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
 SizedBox(height: 60),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(30),
            child: const Icon(Icons.access_time, size: 48, color: Colors.grey),
          ),
SizedBox(height: 24),
 Text(
            "Otomatik talimatın yok",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF2C2C4A),
            ),
          ),

 SizedBox(height: 12),


           Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "İşlemlerini kolaylaştırmak için talimat ver.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7A7A96),
              ),
            ),
          ),

 Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add_circle, color: Colors.white),
                
                label: const Text(
                  "Otomatik talimat ver",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2C2C4A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                 
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
