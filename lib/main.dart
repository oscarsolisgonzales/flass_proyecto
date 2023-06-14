//import 'package:alibaba/views/alerts_view.dart';
import 'package:proyecto/views/home_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutte Login",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF5F5FFF),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.amberAccent,
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}
