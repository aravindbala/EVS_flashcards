import 'home.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key,required this.score}) : super(key: key);
  final String title = ' Computer Science Flashcards for Grade 4 ';
  final String score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget> [
          SizedBox(
  width: 200, // <-- Your width
  height: 50, // <-- Your height
        child: (ElevatedButton(
          child: const Text('CLICK HERE TO START'),
          onPressed: () {
         
          Navigator.push(context, MaterialPageRoute(builder: (context) {
     return const HomePage();
   })); },
        ))),
        SizedBox(width:100,
              height:100),
        Text("Score:  $score",style: TextStyle(fontSize: 20)),
      ]),
    ));
  }
}