import 'package:flutter/material.dart';
import 'package:toko_app/screens/home.dart';


void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
    );
  }
}