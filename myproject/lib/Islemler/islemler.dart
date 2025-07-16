import 'package:flutter/material.dart';
import 'package:myproject/islemlerdetay/abonman_yukle.dart';
import 'package:myproject/islemlerdetay/doludolu_tl_yukle.dart';
import 'package:myproject/islemlerdetay/istanbulkartekle.dart';
import 'package:myproject/islemlerdetay/otomatik_talimatlarim.dart';
import 'package:myproject/islemlerdetay/para_transferi_yap.dart';
import 'package:myproject/islemlerdetay/tl_yukle.dart';

class Islemler extends StatefulWidget {
  const Islemler({super.key});

  @override
  State<Islemler> createState() => _IslemlerState();
}

class _IslemlerState extends State<Islemler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İşlemler",style: TextStyle(fontSize: 24,color: Colors.black87,fontWeight: FontWeight.bold),),
        centerTitle: false,
    
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.close,color: Colors.black,size: 28,),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "TL yükleme ve para transferi",
              style: TextStyle(
                  color: Colors.grey.shade500, fontWeight: FontWeight.bold),
            ),
          ),

        
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: GestureDetector(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Istanbulkartekle()));
                    } ,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                      
                      child:  _listeElemani(Icons.add_circle_rounded, "Yeni İstanbulkart ekle")),
                  ),
                ),

Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: GestureDetector
                  (onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TlYukle()));
                  },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                      
                      child:  _listeElemani(Icons.arrow_upward, "TL yükle"),),
                  )),

Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DoluDoluTLYukle()));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                      
                      child:   _listeElemani(Icons.currency_lira, "Dolu dolu TL yükle"),),
                  ),),

                    Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AbonmanYukle()));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                      
                      child:  _listeElemani(Icons.publish, "Abonman yükle"),),
                  ),),

                    
                    Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>OtomatikTalimatlarim()));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                      
                      child: _listeElemani(Icons.access_time, "Otomatik talimat ver"),),
                  ),),



 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GonderimYontemiSecimi()));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                      
                      child:  _listeElemani(Icons.sync_alt, "Para transferi yap"),),
                  ),)

                    






                    

                
               
                ,
                
               

               
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text("Başvuru",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600)),
                ),

            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                    child: ListTile(
                      leading: Icon(Icons.credit_card, color: Colors.blue),
                      title: Expanded(child: Text("Sanal karta başvur",style: TextStyle(fontWeight: FontWeight.bold),)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("Yeni",
                              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 14,fontWeight: FontWeight.bold)),
                              SizedBox(width: 5,),
                          Icon(Icons.favorite, color: Colors.deepOrangeAccent),
                          SizedBox(width: 8),
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),



                  Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: Text("Ayarlar ve bakiye işlemleri",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600)),
                ),




Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                    child: ListTile(
                      leading: Icon(Icons.qr_code_scanner, color: Colors.blue),
                      title: Expanded(child: Text("Fast İşlemleri",style: TextStyle(fontWeight: FontWeight.bold),)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),


Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                    child: ListTile(
                      leading: Icon(Icons.flash_on, color: Colors.blue),
                      title: Expanded(child: Text("Acil Limit",style: TextStyle(fontWeight: FontWeight.bold),)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                    child: ListTile(
                      leading: Icon(Icons.qr_code, color: Colors.blue),
                      title: Expanded(child: Text("QR ile Öde",style: TextStyle(fontWeight: FontWeight.bold),)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                    child: ListTile(
                      leading: Icon(Icons.wifi, color: Colors.blue),
                      title: Expanded(child: Text("NFC ile bakiye sorgula ",style: TextStyle(fontWeight: FontWeight.bold),)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.grey.shade200,),
                    child: ListTile(
                      leading: Icon(Icons.campaign, color: Colors.blue),
                      title: Expanded(child: Text("NFC ile talimat etkinleştir",style: TextStyle(fontWeight: FontWeight.bold),)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          
                          Icon(Icons.chevron_right, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),


                
              ],



            ),
          ),
        ],
      ),
    );
  }

  Widget _listeElemani(IconData icon, String baslik) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(baslik, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.chevron_right, color: Colors.blue),
    );
  }
}