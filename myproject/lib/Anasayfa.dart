import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: 430,
               
                decoration: BoxDecoration(gradient: LinearGradient(colors:[const Color.fromRGBO(16, 72, 168, 1),Colors.blue] )),

                child: Column(
                  children: [
                    Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all( 15.0),
                        child: Container(
                          
                          height: 80,
                          width: 150,
                         
                          decoration: BoxDecoration(
                             //color: Colors.red,
                             image: DecorationImage(image: AssetImage("resimler/unnamed.png",),fit: BoxFit.contain),
                             
                          ),
                          
                        ),
                        
                      ),
                      Spacer(),
                          Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.notifications,color: Colors.white,size: 28,),
                         ),
                      ),
                      SizedBox(width: 18,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Container(
                          decoration: BoxDecoration(
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              decoration: BoxDecoration(   color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),),
                              child: Icon(Icons.person,color: Colors.white,size: 28,)),
                          ),
                         ),
                      ),
                    
                     
                    ],
                    
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40.0,right: 15,left: 15),
                          child: Container(
                            height: 150,
                            width: 450,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.2)
                            ),
                            //color: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(
                                children: [
                                  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      
                                      Text("Dijital hesabınızın",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                      Text("bakiyesini görmek için   >",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                                      Text("giriş yap",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("resimler/p2.png"))
                                    ),
                                  ),
                                Image.asset("resimler/p3.png",fit: BoxFit.cover,width: 80,)
                                ],
                              ),
                            ),
                            
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                
                
                
                
              ),
              
            
            
           
            ],
            
          ),

           
        ],

        
      ),
    );
  }
}