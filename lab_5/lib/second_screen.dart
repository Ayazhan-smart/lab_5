import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State <SecondScreen> createState() => SecondScreenState();
}

class SecondScreenState extends State <SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen')),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);           
              },
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.popAndPushNamed(context, '/third');
            }, 
            child: Text('PopAndPushNamed'),
            ),
          ],
        ),
    );
  }
}