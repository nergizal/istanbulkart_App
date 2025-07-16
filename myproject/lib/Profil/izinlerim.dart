import 'package:flutter/material.dart';

class Izinlerim extends StatefulWidget {
  const Izinlerim({super.key});

  @override
  State<Izinlerim> createState() => _IzinlerimState();
}

class _IzinlerimState extends State<Izinlerim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("İzinlerim",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back,color: Colors.black,)),

      ),
      body: ListView(
        children: [
          Divider(height: 8,),
          GestureDetector(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.phone,color: Colors.black87,),
                  SizedBox(width: 16,),
                  Expanded(child: Text("İletişim İzinlerim",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),textAlign: TextAlign.start,)),
                  Icon(Icons.chevron_right,color: Colors.grey,)
                ],
                ),
              ),
            ),
          ),
          Divider(height: 20,),

          GestureDetector(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.description,color: Colors.black87,),
                  SizedBox(width: 16,),
                  Expanded(child: Text("Açık Rıza",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),textAlign: TextAlign.start,)),
                  Icon(Icons.chevron_right,color: Colors.grey,)
                ],
                ),
              ),
            ),
          ),

           Divider(height: 20,),
           GestureDetector(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.directions_car,color: Colors.black87),
                  SizedBox(width: 16,),
                  Expanded(child: Text("Plaka ekleme açık rızası",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),textAlign: TextAlign.start,)),
                  Icon(Icons.chevron_right,color: Colors.grey,)
                ],
                ),
              ),
            ),
            
          ),
          Divider(height: 20,),


        ],
      ),
      
    );
  }
}