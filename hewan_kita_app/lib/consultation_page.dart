import 'package:flutter/material.dart';

class ConsultationPage extends StatefulWidget {
  @override
  _ConsultationPageState createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("consultation", style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: IconButton(
          icon: Icon(Icons.thumb_up),
          color: Colors.grey,
          onPressed: (){},
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text("Ketahui 5 Fakta Tentang Anjing yang Menarik"),
              Text("Brilio\n13 Juni 2019", style: TextStyle(fontSize: 8),),
              Image.network("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*", fit: BoxFit.fitWidth),
              Text("1. Paling Bervariasi dalam Hal Ukuran dan Bentuk", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Proses perkembangbiakan dari anjing membuat kita jadi mengenal banyak tipe anjing yang berbeda. Mulai dari warna, bentuk, ukuran, bulu, dan juga karakter fisik. Ternyata, jumlah perkembangbiakan anjing ini lebih banyak dari mamalia lainnya. Ternyata ada lebih dari 400 ras anjing di dunia. Diperkirakan jumlah ini terus bertambah."),
            ],
          ),
        ),
      ),
    );
  }
}