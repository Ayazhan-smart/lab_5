import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')), 
      body: Center(
        child: ElevatedButton(
          onPressed: () {
          Navigator.pop(context);//Ашылған ThirdScreen жауып, алдыңғы экранға қайтарады
        },
        child: Text('Pop to Previous')),
      ),
    );
  }
}