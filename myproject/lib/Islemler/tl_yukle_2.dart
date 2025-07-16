import 'package:flutter/material.dart';

class TlYukle2 extends StatefulWidget {
  const TlYukle2({super.key});

  @override
  State<TlYukle2> createState() => _TlYukleState();
}

class _TlYukleState extends State<TlYukle2> {
  int secilenTutar =0;
  int tutar=0;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("TL yükle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
        leading: IconButton(onPressed: (){
            Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 15),
              child: Text("Yükleme yapılacak kart",style: TextStyle(
                color: Color(0xFF2C2C4A),fontSize: 16,fontWeight: FontWeight.bold
              ),),
            ),
        
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [Color.fromARGB(255, 7, 73, 187), Color(0xFF68A9FF)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset("resimler/b.png", height: 100),
                                ),
                                const SizedBox(width: 8),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dijital Hesabım", style: TextStyle(color: Colors.white, fontSize: 16)),
                                    //Text("hesabım", style: TextStyle(color: Colors.white, fontSize: 18)),
                 Row(children: [
                 Text("21,38 ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                   Text("TL",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17))
                 ],),
                                    
                                  ],
                                ),
                              
                                //const Icon(Icons.chevron_right, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
               ),
        
        SizedBox(height: 30,),
             Padding(
               padding: EdgeInsets.only(left: 15.0,bottom: 15),
               child: Text("Ödeme Aracı",style: TextStyle(
                  color: Color(0xFF2C2C4A),fontSize: 16,fontWeight: FontWeight.bold)),
             ),
        
        
        
        
        Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Container(
            
                            height: 100,
                            width: 350,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(128, 250, 249, 249),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade300,width: 3)
                            ),
                            child: Row(
                              children: [
                                Image.asset("resimler/k.png", width: 30, height: 30),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text("Banka/kredi kartı seç", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF2C2C4A))),
                                      ),
                                      SizedBox(height: 8),
                                      Text("Ödeme yapmak istediğin kartını seç", style: TextStyle( fontSize: 14, color: Color(0xFF2C2C4A))),
                                    ],
                                  ),
                                ),
                                const Icon(Icons.chevron_left_sharp, color: Color(0xFF2C2C4A)),
                              ],
                            ),
                          ),
        ),
        
        SizedBox(height: 30,),
        
        
        Row(
          children: [
         Padding(
               padding: EdgeInsets.only(left: 15.0,bottom: 15),
               child: Text("Tutar",style: TextStyle(
                  color: Color(0xFF2C2C4A),fontSize: 16,fontWeight: FontWeight.bold)),
             ),
        Spacer(),

        
             Padding(
               padding: const EdgeInsets.only(bottom: 10.0,right: 10),
               child: Image.asset("resimler/l.png",height: 35,),
             )
          ],
        ),
            
        Column(children: [
          Row(children: [
            Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("10",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
        
        
        Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
            Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("30",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
        
            Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("50",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
        
        
        
          ],),
        
        
        
        
        
          Row(
            children: [
        Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
            Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("150",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
        
        
            Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("200",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
        
        
            Padding(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15),
        child: Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300,width: 2),
          color:Color.fromARGB(128, 250, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("500",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Text("TL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                )
              ],
            ),
          ),
        ),
            ),
        
        
        
        
        
        
        
        
        
        
            ],
          ),
        ],),
        
        
        
        Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(children: [
            Text("Toplam tutar",style: TextStyle(fontSize: 12,color: Colors.black54),),
            Text("0.00 TL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15),)
          ],),
        ),
        
        SizedBox(width: 50,),
        
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(shape: BoxShape.rectangle),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: (Color(0xFF2C2C4A)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            onPressed: (){
          
          }, child: Text("Ödemeye Geç",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
        )
        ],),
        
        
        
          ],
        
        
          
        ),
      ),
    );
  }
}