import 'package:flutter/material.dart';
import 'package:myproject/Islemler/islemler.dart';

class Istanbulkartekle extends StatefulWidget {
  const Istanbulkartekle({super.key});

  @override
  State<Istanbulkartekle> createState() => _IstanbulkartekleState();
}

class _IstanbulkartekleState extends State<Istanbulkartekle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 80,
        //title: Text("İstanbulkart ekle",style: TextStyle(color: Color(0xFF2C2C4A),fontSize: 20,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon( Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            Text("İstanbulkart ekle",style: TextStyle(color: Color(0xFF2C2C4A),fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            Text("Ekleyeceğin kart kime ait?",style: TextStyle(color: Colors.black87,fontSize: 16),),
        
        SizedBox(height: 30,),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12)),
              child:Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.person,size: 28,color: Colors.blue,),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:  20.0,vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Text("Kendi kartını ekle",style: TextStyle(color:  Color(0xFF2C2C4A),fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Text("Sadece sana ait olan kartları\nekleyebilirsin")
                  ],),
                ),
                SizedBox(width: 30,),
        
                Icon(Icons.chevron_right,color: Colors.blue,size: 30,)
              ],) ,
            ),
        
        
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12)),
              child:Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.person,size: 28,color: Colors.blue,),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:  20.0,vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text("Başkasının kartını ekle",style: TextStyle(color:  Color(0xFF2C2C4A),fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Text("Sana ait olmayan diğer kartları\nekleyebilirsin")
                  ],),
                ),
                SizedBox(width: 30,),
        
                Icon(Icons.chevron_right,color: Colors.blue,size: 30,)
              ],) ,
            ),
        
        
        
        
        
        
        
        
          ],
        ),
      ),
    );
  }
}