import 'package:flutter/material.dart';
import 'package:valentine_proj/home_page.dart';
import 'package:valentine_proj/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

