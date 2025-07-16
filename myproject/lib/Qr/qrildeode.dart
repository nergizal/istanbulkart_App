import 'package:flutter/material.dart';

class Qrildeode extends StatefulWidget {
  const Qrildeode({super.key});

  @override
  State<Qrildeode> createState() => _QrildeodeState();
}

class _QrildeodeState extends State<Qrildeode> {
  @override
  int aktifIndex = 0; 
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(Icons.close, size: 28, color: Colors.black87),
                    ),
      
                   
                  ],
                ),
      
                 SizedBox(height: 16,),
      
                 Text("Ulaşım için QR göster ve öde ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:  Color(0xFF2C2C4A),),textAlign: TextAlign.center,),
                 SizedBox(height: 8,),
                 Text("QR kodunu cihaza okut",style: TextStyle(fontSize: 15, color: Colors.black54),textAlign: TextAlign.center,),
      SizedBox(height: 30,),
      Container(
        height: 220,
      width: 220,
        decoration: BoxDecoration(
      border: Border.all(width: 2, color: Colors.black12)
        ),
        child: Image.asset("resimler/kod.png",fit: BoxFit.cover,),
      
      ),
      SizedBox(height: 25,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Text("21,38",style: TextStyle(color:  Color(0xFF2C2C4A),fontWeight: FontWeight.bold,fontSize: 22),),
      SizedBox(width: 5,),
      Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
      )
        ],
      ),
      SizedBox(height: 4,),
      Text("Mevcut Bakiyen",style: TextStyle(),),
      
      SizedBox(height: 20,),
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
      
      
      decoration: BoxDecoration(
        color:  Color(0xFFF1F1F3),
        borderRadius: BorderRadius.circular(20),
        
        
      ),
         
      child: Row(children: [
        Expanded(child: GestureDetector(
          onTap: () {
            setState(() {
              aktifIndex=0;
            });
          },
          child:        Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    // QR Göster
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            aktifIndex = 0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: aktifIndex == 0
                                ? const Color(0xFF2C2C4A)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "QR göster",
                              style: TextStyle(
                                color: aktifIndex == 0
                                    ? Colors.white
                                    : Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    // QR Okut
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            aktifIndex = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: aktifIndex == 1
                                ? const Color(0xFF2C2C4A)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "QR okut",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: aktifIndex == 1
                                    ? Colors.white
                                    : Colors.black45,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ),
      )
      
      
      ],
      
      
      
      ),

      
    ),),
    SizedBox(height: 20,),
    
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (_) => DigerQrIslemleri()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF2C2C4A),
                        width: 1.4,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Diğer QR işlemleri",
                          style: TextStyle(
                            color: Color(0xFF2C2C4A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios,
                            size: 16, color: Color(0xFF2C2C4A)),
                      ],
                    ),
                  ),
                ),
    ),],
    
    
    
    
    
    ),);
  }
}