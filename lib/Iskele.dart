import 'package:flutter/material.dart';
import 'AnaEkran.dart';

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Hesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}
