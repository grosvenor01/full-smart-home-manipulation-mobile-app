import 'package:flutter/material.dart';
import 'package:mcsmart/nav.dart';
import 'package:mcsmart/tl.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner :  false,
      home: navbar(),
      routes: { 
        "temp": (context) => templigh(),
      },
    );
  }
}

