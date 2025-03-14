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
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen())); //SecondScreen өтеді, бірақ FirstScreen жабылмайды
        }, 
         child: const Text('Push'),
        ),
        // Navigator.pushNamed() - Маршрут атауы арқылы жаңа экран ашады
        ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/second'); //Жаңа экранды route атауы арқылы ашады
        }, 
        child:Text('PushNamed'),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen())); // FirstScreen жауып, орнына SecondScreen ашады.Бірақ  артқа қайтуға мүмкіндік жоқ
        },
         child:Text('PushReplacement'),
        ),
       ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SecondScreen()), (route) => false); //Барлық алдыңғы экрандарды жауып, жаңасын ашады
        }, 
        child: Text('PushAndRemoveUntil'),
        ),
        ElevatedButton(
          onPressed: () {
          Navigator.pushAndRemoveUntil(context, '/second' as Route<Object?>, (route) => false);//Барлық алдыңғы экрандарды жауып, route атауы арқылы жаңасын ашады
        }, 
        child:Text('PushAndRemoveUntil'),
        ),
      ],
      ),
    );
  }
}