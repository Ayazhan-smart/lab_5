import 'package:flutter/material.dart';
import 'package:lab_5/first_screen.dart';
import 'package:lab_5/second_screen.dart';
import 'package:lab_5/third_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
     '/':(context) => FirstScreen(),
     '/second':(context) => SecondScreen(),
    '/third':(context) => ThirdScreen(),
        }
    );
  }
}

