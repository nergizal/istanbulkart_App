import 'dart:ui';
import 'package:flutter/material.dart';

class BulSayfasi extends StatelessWidget {
  const BulSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          SizedBox.expand(
            child: Image.asset(
              'resimler/harita.jpg',
              fit: BoxFit.cover,
            ),
          ),

          
          ClipRRect(
            borderRadius: BorderRadius.zero,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(221, 11, 15, 42).withOpacity(0.7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Çevrende İstanbulkart\nkullanabileceğin",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(Icons.close, color: Colors.white, size: 28),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "0 nokta var!",
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    const SizedBox(height: 30),

                    // 🔘 Kategori Butonları
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: const [
                        _KategoriButon(icon: Icons.all_inclusive, title: "Tümü", sayi: 0),
                        _KategoriButon(icon: Icons.directions_bus, title: "Ulaşım", sayi: 0),
                        _KategoriButon(icon: Icons.restaurant, title: "Yeme&İçme", sayi: 0),
                        _KategoriButon(icon: Icons.shopping_basket, title: "Market", sayi: 0),
                        _KategoriButon(icon: Icons.upload, title: "Yükleme noktaları", sayi: 0),
                        _KategoriButon(icon: Icons.more_horiz, title: "Diğer", sayi: 0),
                      ],
                    ),

                    // Spacer ile kalan alanı boş bırak
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _KategoriButon extends StatelessWidget {
  final IconData icon;
  final String title;
  final int sayi;

  const _KategoriButon({
    required this.icon,
    required this.title,
    required this.sayi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withOpacity(0.85),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20, color: Colors.black87),
          const SizedBox(width: 6),
          Text(
            "$title $sayi",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
