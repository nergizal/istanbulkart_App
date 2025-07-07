import 'package:flutter/material.dart';
import 'package:myproject/bilgilerimSayfasi.dart';

class ProfileBilgilerim extends StatefulWidget {
  const ProfileBilgilerim({super.key});

  @override
  State<ProfileBilgilerim> createState() => _ProfileBilgilerimState();
}

class _ProfileBilgilerimState extends State<ProfileBilgilerim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
    // Gri arka plan (kaydırdıkça uzuyormuş gibi görünür)
    Positioned.fill(
      top: 130, // mavi alanın yüksekliği
      child: Container(
        color: const Color.fromARGB(255, 222, 221, 221),
      ),
    ),

    // Ana yapı
    Column(
      children: [
        // Mavi üst alan
        Container(
          height: 130,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Stack(
            children: [
              // Geri tuşu ve ad
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_back, color: Colors.white),
                      SizedBox(width: 16),
                      Text(
                        "Nergiz Alıcı",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Profil resmi sağ alt köşeye taşsın
              const Positioned(
                right: 16,
                bottom: -25,
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.grey, size: 30),
                ),
              ),
            ],
          ),
        ),

       


          Expanded(
            child: ListView(children: [
              Container(
           width: 400,
            height: 40,
            
              color: const Color.fromARGB(255, 222, 221, 221),
              
            
          
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hesabım",style: TextStyle(fontSize:16,color:  Colors.grey,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
              ),
            
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Bilgilerim", style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bilgilerimsayfasi()),);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.phone_callback),
                title: Text("İzinlerim", style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.credit_card),
                title: Text("Kayıtlı Ödeme Araçlarım", style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text("Şifremi Değiştir", style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.access_time_filled),
                title: Text("Son Giriş Bilgilerim", style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.verified_user_sharp),
                title: Text("Hesabını Onayla", style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
            
          ),
          Container(
            height: 60,
            //color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 8),
              child: Text("Yardım",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Container(
                color: Colors.white,
                child: ListTile(
                    leading: Icon(Icons.help_outline_sharp),
                    title: Text("Sıkça Sorulan Sorular", style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Container(
                color: Colors.white,
                child: ListTile(
                    leading: Icon(Icons.shield),
                    title: Text("Bilgi Güvenliği", style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Container(
                color: Colors.white,
                child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Bize Ulaşın", style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
              ),
            ),



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