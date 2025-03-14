import 'package:flutter/material.dart';
import 'package:lab_5/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State <FirstScreen> createState() =>  FirstScreenState();
}

class  FirstScreenState extends State <FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          //PushButton
        ElevatedButton(
          onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
        }, 
         child: const Text('Push'),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/second');
        }, 
        child:Text('PushNamed'),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen()));
        },
         child:Text('PushReplacement'),
        ),
       ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SecondScreen()), (route) => false);
        }, 
        child: Text('PushAndRemoveUntil'),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushAndRemoveUntil(context, '/second' as Route<Object?>, (route) => false);
        }, 
        child:Text('PushAndRemoveUntil'),
        ),
      ],
      ),
    );
  }
}