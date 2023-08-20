import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    Constantine(),
  );
}

class Constantine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bugün Ne Yesem?',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;
  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuk Suyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'İmam Bayıldı',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Levrek',
  ];
  List<String> tatliAdlari = [
    'Tel Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma',
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
    print('Şu anda çorba no $corbaNo');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: yemekleriYenile,
                child: Image.asset('images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 10,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: yemekleriYenile,
                  child: Image.asset('images/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
          ),
          Container(
            width: 200,
            child: Divider(
              height: 10,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: Container(
                  child: Image.asset('images/tatli_$tatliNo.jpg'),
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 10,
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
          ),
        ],
      ),
    );
  }
}
