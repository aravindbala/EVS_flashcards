//import 'package:flashcards_app/all_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_moon/home.dart';

const mainColor = Colors.pinkAccent;

const cardTextStyle = TextStyle(fontSize: 20, letterSpacing: 1.0);
const otherTextStyle = TextStyle(fontSize: 15);
var fieldval = ' ';
final titleController = TextEditingController();

class ReusableCard extends StatelessWidget {
  
  ReusableCard({required this.text});
  final String text;

  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 7,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child:
                Text(text, style: cardTextStyle, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}