import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:myproject/Islemler/islemler.dart';
import 'package:myproject/Bul/bul.dart';
import 'package:myproject/Hesap/Kart/hesap_kart.dart';
import 'package:myproject/islemlerdetay/otomatik_talimatlarim.dart';
import 'package:myproject/islemlerdetay/para_transferi_yap.dart';
import 'package:myproject/islemlerdetay/tl_yukle.dart';
import 'package:myproject/Anasayfa/kampanyadetay.dart';
import 'package:myproject/main.dart';
import 'package:myproject/Profil/profile.dart';
import 'package:myproject/Qr/qrildeode.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int navBarIndex = 0;
  int kategoriIndex = 0;

  final List<String> kategoriler = ["Tümü", "Kampanyalar", "Haberler"];

  final List<String> tumuGorseller = [
    "resimler/a1.png",
    "resimler/a2.png",
    "resimler/a3.png",
    "resimler/a4.png",
  ];

  final List<String> kampanyaGorseller = [
    "resimler/a1.png",
    "resimler/a2.png",
    "resimler/a3.png",
    "resimler/a4.png",
  ];

  final List<String> haberGorseller = [
    "resimler/h1.png",
    "resimler/h2.png",
    "resimler/h3.png",
    "resimler/h4.png",
  ];

  List<String> getAktifGorseller() {
    if (kategoriIndex == 0) return tumuGorseller;
    if (kategoriIndex == 1) return kampanyaGorseller;
    if (kategoriIndex == 2) return haberGorseller;
    return [];
  }

  List<Widget> get navBarPages => [
        _anaSayfa(),
        HesapKartSayfasi(),
        Qrildeode(),
        Islemler(),
        BulSayfasi(),
      ];

  Widget _anaSayfa() {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(16, 72, 168, 1),
                    Colors.blue,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 80,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("resimler/logo_2.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
  padding: const EdgeInsets.symmetric(vertical: 40),
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Mesajlarim()),
      );
    },
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(2),
          child: const Icon(Icons.notifications, color: Colors.white, size: 28),
        ),
        Positioned(
          right: 2,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Text(
              '8',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),

                      const SizedBox(width: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 42,),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileBilgilerim()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(Icons.person, color: Colors.white, size: 30),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, right: 15, left: 15),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Dijital hesabınızın", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                                Text("bakiyesini görmek için >", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                                Text("giriş yap", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const Spacer(),
                            const Image(
                              image: AssetImage("resimler/p3.png"),
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GonderimYontemiSecimi()));
                          },
                          child: buildBox(Icons.sync_alt, "Para", "transferi")),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TlYukle()));
                          },
                          child: buildBox(Icons.arrow_upward, "TL", "yükle")),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OtomatikTalimatlarim()));
                          },
                          child: buildBox(Icons.access_time, "Otomatik", "talimat ver")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 75,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(Icons.check_circle, color: Colors.blue),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 18, bottom: 2),
                        child: Text("Hesabını Onayla", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text("Kimliğini doğrula, limitlere takılma"),
                      ),
                    ],
                  ),
                   Spacer(),
                   Icon(Icons.chevron_right, color: Colors.blue, size: 35),
                  SizedBox(width: 10),
                ],
              ),
            ),
             SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(kategoriler.length, (index) {
                bool aktifMi = kategoriIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      kategoriIndex = index;
                    });
                  },
                  child: Container(
                    margin:  EdgeInsets.symmetric(horizontal: 8),
                    padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: aktifMi ? Colors.black87 : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      kategoriler[index],
                      style: TextStyle(
                        color: aktifMi ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 15),
          ]),
        ),
        SliverPadding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final path = getAktifGorseller()[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>KampanyaDetaySayfasi()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              childCount: getAktifGorseller().length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBox(IconData icon, String line1, String line2) {
    return Container(
      width: 105,
      height: 95,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.white,
              child: Icon(icon, color: const Color(0xFF3B68D8), size: 16),
            ),
          ),
          const SizedBox(height: 6),
          Text(line1, style: const TextStyle(color: Colors.white), ),
          Text(line2, style: const TextStyle(color: Colors.white), ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: navBarIndex,
        children: navBarPages,
      ),
      bottomNavigationBar: ConvexAppBar(
        height: 50,
        backgroundColor: Colors.grey.shade100,
        activeColor: const Color.fromARGB(255, 1, 12, 44),
        color: Colors.grey.shade600,
        style: TabStyle.fixedCircle,
        initialActiveIndex: navBarIndex,
        onTap: (int index) {
          setState(() {
            navBarIndex = index;
          });
        },
        items: const [
          TabItem(icon: Icons.home, title: 'Anasayfa'),
          TabItem(icon: Icons.credit_card_rounded, title: 'Hesap'),
          TabItem(icon: Icons.qr_code_2, title: 'QR ile Öde'),
          TabItem(icon: Icons.swap_horizontal_circle, title: 'İşlemler'),
          TabItem(icon: Icons.location_on, title: 'Bul'),
        ],
      ),
    );
  }
}
