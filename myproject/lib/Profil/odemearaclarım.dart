import 'package:flutter/material.dart';

class Odemearaclarim extends StatefulWidget {
  const Odemearaclarim({super.key});

  @override
  State<Odemearaclarim> createState() => _OdemearaclarimState();
}

class _OdemearaclarimState extends State<Odemearaclarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text("Kayıtlı Ödeme Araçlarım",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0),
                    child: Text("tamam"),
                  ),
                  Text("434529********01",style: TextStyle(color: Colors.grey),),
                ],
              )
              
            ),
SizedBox(height: 10,),
             GestureDetector(
  onTap: () {
    // Kart ekleme işlemi
  },
  child: Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: const Color(0xFF1C1C4B),
              shape: BoxShape.circle,
            ),
            
            child: Center(
              child: Icon(Icons.add, color: Colors.white, size: 20),
            ),
          
            
          ),
        ),
     
        const SizedBox(width: 12),
        Expanded(
          flex: 4,
          child: const Text(
            "Kart ekle",
            style: TextStyle(
              color: Color(0xFF1C1C4B),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  ),
),
 
     ],   ),
    
     ),
     bottomNavigationBar: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
       child: Container(
        decoration: BoxDecoration(
        color: Color(0xFFFDF3E9),
        borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(16),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("Kart bilgileri Masterpass altyapısı ile saklanmaktadır.",style: TextStyle(fontSize: 13),),),
            Image.asset("resimler/l.png",height: 24,)
          ],
        ),
       ),
     ),
     
     );
}
}