import 'package:flutter/material.dart';
import 'package:untitled/task2/homepage.dart';
import 'package:untitled/task2/page1.dart';
import 'package:untitled/task2/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: PageOne(),
    );
  }
}

