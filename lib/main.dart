import 'package:dwm_flutter_app/pages/contact.page.dart';
import 'package:dwm_flutter_app/pages/counter.page.dart';
import 'package:dwm_flutter_app/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomPage(),
        "/counter": (context) => Counter(),
        "/contact": (context) => Contact(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        primaryColor: Colors.teal,
        textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 22)),
      ),
    );
  }
}
