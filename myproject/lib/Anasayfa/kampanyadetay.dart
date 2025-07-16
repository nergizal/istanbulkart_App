import 'package:flutter/material.dart';

class KampanyaDetaySayfasi extends StatefulWidget {
  const KampanyaDetaySayfasi({super.key});

  @override
  State<KampanyaDetaySayfasi> createState() => _KampanyaDetaySayfasiState();
}

class _KampanyaDetaySayfasiState extends State<KampanyaDetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload_outlined, color: Colors.black87),
            onPressed: () {
              
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          
          Image.asset(
            "resimler/g1.jpg"),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "İstanbulkart’la Beltur plaj büfelerinde ödemelerin %10’u nakit iade!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1C1B1F),
                  ),
                ),
                SizedBox(height: 12),

                Text(
                  "Beltur plaj büfelerinde yapacağın Sanal İstanbulkart Plus dahil tüm İstanbulkartlarla yapılacak ödemelerinin %10’u kartına iade!",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF4A4A4A),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      "Kampanya bitiş tarihi",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Son 15 Gün",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "31.07.2025",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1C1B1F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFD1D1D6)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                 
                },
                child: const Text(
                  "Kampanya koşulları",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1C1B1F),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
