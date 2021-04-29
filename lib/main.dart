import 'package:flutter/material.dart';
import 'Hakkında.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hesap Makinesi",
      home: HesapMakinesi(),
    );
  }
}

class HesapMakinesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF08AEEA),
            Color(0xFF2AF598),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: AppBar(
          actions: [IconButton(icon: Icon(Icons.border_color), onPressed: () {} )],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Basit Hesap Makinesi'),
        ),
        body: AnaEkran(),
      ),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1, sayi2, sonuc;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        50,
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            RaisedButton(
              color: Colors.blue,textColor: Colors.white,
              onPressed: sayiTopla,
              child: Text("Topla"),
            ),
            RaisedButton(
              color: Colors.blue,textColor: Colors.white,
              onPressed: sayiCikar,
              child: Text("Çıkar"),
            ),
            RaisedButton(
              color: Colors.blue,textColor: Colors.white,
              onPressed: sayiCarp,
              child: Text("Çarp"),
            ),
            RaisedButton(
              color: Colors.blue,textColor: Colors.white,
              onPressed: sayiBol,
              child: Text("Böl"),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hakkinda()),);

                },
                  child: Text('Hakkında'),
                )
            ),
          ],
        ),
      ),
    );
  }
}