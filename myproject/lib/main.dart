import 'package:flutter/material.dart';
import 'package:myproject/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileBilgilerim(),
    );
  }
}

class Mesajlarim extends StatefulWidget {
  const Mesajlarim({super.key});

  @override
  State<Mesajlarim> createState() => _MesajlarimState();
}

class _MesajlarimState extends State<Mesajlarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesajlarım",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("İlk alışveriş %30 Kazanç!",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                SizedBox(height: 8,),
                Text("Sanal İstanbulkart Plus ile yapacağın ilk işlemine %30 nakit iade kazan!",),
                SizedBox(height: 12,),
                Text("5 gün önce",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
              ],


              
            ),



            
          ),
          SizedBox(height: 8,),


          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lezzetini seç, nakit iade kazan!",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                SizedBox(height: 8,),
                Text("Sanal İstanbulkart Plus ile kafe, restoran ve fast food ödemelerinde %10 nakit iade fırsatı seni bekliyor! 🍔",),
                SizedBox(height: 12,),
                Text("14 gün önce",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
              ],


              
            ),



            
          ),
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lezzetini seç, nakit iade kazan!",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                SizedBox(height: 8,),
                Text("Sanal İstanbulkart Plus ile kafe, restoran ve fast food ödemelerinde %10 nakit iade fırsatı seni bekliyor! 🍔",),
                SizedBox(height: 12,),
                Text("14 gün önce",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
              ],


              
            ),



            
          ),
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tıkla Gelsin, indirim gelsin!",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                SizedBox(height: 8,),
                Text("Sanal İstanbulkart Plus kartın ile TıklaGelsin'den vereceğin 400 TL ve üzeri siparişlerde, 75 Tl indirim kazan!😎",),
                SizedBox(height: 12,),
                Text("18 gün önce",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
              ],


              
            ),



            
          ),
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Yüklemeni yap, işlem ücreti ödeme!",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
                SizedBox(height: 8,),
                Text("İstanbulkart Mobilden hesabına ya da İstanbulkart'ına Garanti BBVA kartlarınla 500 Tl yüklemene işlem ücretin iade!⚡️",),
                SizedBox(height: 12,),
                Text("21 gün önce",
                    style: TextStyle(color: Colors.grey, fontSize: 12)
                    ),
              ],


              
            ),



            
          ),
        ],
      
      ),
    );
  }
}