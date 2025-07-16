import 'package:flutter/material.dart';

class GonderimYontemiSecimi extends StatelessWidget {
  const GonderimYontemiSecimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2C2C4A)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Gönderimi nasıl yapacaksın?",
          style: TextStyle(
            color: Color(0xFF2C2C4A),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          children: [
            _secenekKarti(
              context,
              icon: Icons.star,
              iconColor: Colors.blue,
              text: "Kayıtlı işlemlerden",
              onTap: () {},
            ),
            const SizedBox(height: 12),
            _secenekKarti(
              context,
              icon: Icons.compare_arrows_rounded,
              iconColor: Colors.lightBlue,
              text: "İstanbulkartlar arası",
              onTap: () {},
            ),
            const SizedBox(height: 12),
            _secenekKarti(
              context,
              icon: Icons.credit_card,
              iconColor: Colors.blueAccent,
              text: "IBAN, TR Karekod veya Kolay Adres ile",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _secenekKarti(BuildContext context,
      {required IconData icon,
      required Color iconColor,
      required String text,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: iconColor),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFF2C2C4A),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
