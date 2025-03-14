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
      initialRoute: "/", //Қолданба ашылғанда ең бірінші көрсетілетін экран (FirstScreen)
      // Қолданбадағы маршруттарды анықтайтын карта (Map).
     // Әрбір маршрут экранның атауын көрсетіп, сәйкес экранға бағыттайды.
   routes: {
     '/':(context) => FirstScreen(), // Бастапқы экран (Home Screen)
     '/second':(context) => SecondScreen(), // '/second' маршруты арқылы екінші экранға өтеді
    '/third':(context) => ThirdScreen(), // '/third' маршруты арқылы үшінші экранға өтеді
        }
    );
  }
}

