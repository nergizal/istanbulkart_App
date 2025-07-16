import 'package:flutter/material.dart';

class Songirisbilgilerim extends StatefulWidget {


 Songirisbilgilerim({super.key,});

  @override
  State<Songirisbilgilerim> createState() => _SongirisbilgilerimState();
}

class _SongirisbilgilerimState extends State<Songirisbilgilerim> {
    final List<Map<String, String>> girisler = [
    {"tarih": "14.07.2025 / 23:28", "durum": "Başarılı giriş"},
    {"tarih": "14.07.2025 / 22:54", "durum": "Başarılı giriş"},
    {"tarih": "14.07.2025 / 22:14", "durum": "Başarılı giriş"},
    {"tarih": "14.07.2025 / 13:36", "durum": "Başarılı giriş"},
    {"tarih": "14.07.2025 / 01:40", "durum": "Başarılı giriş"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Son giriş bilgilerim",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        
        
      ),
      body:ListView.separated(itemCount: girisler.length,
      separatorBuilder: (context, index)=> Divider(
        thickness: 1,
        color: Colors.grey.shade300,
        indent: 16,
        endIndent: 16,
      ),
        
      
      itemBuilder: (context,index){
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  girisler[index]["tarih"]!,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  girisler[index]["durum"]!,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
     