import 'package:flutter/material.dart';
import 'questions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ndialog/ndialog.dart';
import 'welcome.dart';
enum Radioptions { A,B,C,D }


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  double _initial = 0;
  bool buttondisabled = true;
  String score = ' ';
  int correct_flag = 0;
  int correct_num = 0;
   final Set<int> _setOfInts = {};
  int i = 0;
  String chosen_answer = '';
  String actual_answer = '';
  bool completion_flag = false;
  bool TF_flag = false;
  bool condresult = false;
  @override
  Widget build(BuildContext context) {
  //  String value = (_initial * 10).toStringAsFixed(0);
    //String total = (_initial * 10).toStringAsFixed(0);
      _initial = _initial + 0.01;
    int Qtotalint = (_initial * 100).toInt();
    String Qtotal = (Qtotalint - 1).toString();
   
    if(int.parse(Qtotal) == 5) {
      completion_flag = true;
    }
    
    Set<int> Mans = {};
    List<String> QAset = [];
  final player = AudioPlayer();
    String qtext= ' ';
     Radioptions? _character; 

    int answer = 0;
    String final_answer = ' ';
    String radio_answer = ' ';
    String? gender;
    String item;
    String questionx,optionX,option1,option2,option3,option4;
    List<String> listRadio = [];

    QAset = question(qlist);
  
    questionx = QAset[0];
    option1 = QAset[1];
    option2 = QAset[2];
    option3 = QAset[3];
    option4 = QAset[4];
    final_answer = QAset[5];
    TF_flag = (QAset[6].toLowerCase() == 'true') ?true :false;
    score = correct_num.toString();
    //condresult = await check_completion(Qtotal);
 
    return Scaffold(
      
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            centerTitle: true,
            title: Text("Computer Science Flashcards for Grade 4", style: TextStyle(fontSize: 30)),
            backgroundColor: Colors.blueAccent,
            toolbarHeight: 80,
            elevation: 5,
            shadowColor: Color.fromARGB(255, 64, 182, 255),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0))),
        body: Center(
          
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               
               Text(questionx,style: TextStyle(fontSize: 25)),
               
              SizedBox(width:100,
              height:100),
                
              ListTile(
          title: Text(option1),
          leading: Radio<Radioptions>(
            value: Radioptions.A,
            groupValue: _character,
            onChanged: (Radioptions? value) {
              setState(() {
                _character = value;   
                buttondisabled = false;
                chosen_answer = option1;
              if(chosen_answer == final_answer) {
                  correct_flag = 1;
                  correct_num = correct_num + 1;
                  player.play(AssetSource('../audio/correct.mp3'));
                }
                else {
                  correct_flag = 0;
                  player.play(AssetSource('../audio/wrong.mp3'));
                }
                DialogBackground(
                  blur: 5,
   dialog: AlertDialog(
      title: (correct_flag == 1) ?Text("CORRECT!!! 😀") :Text('INCORRECT!!! 😕'),
      content: (correct_flag == 1) ?Text(" ") :Text("Correct answer is ' $final_answer '"),
      actions: <Widget>[
        TextButton(child: Text("Okay"), onPressed: () => Navigator.pop(context)),
      ],
    ),
  ).show(context);
              
              });
            },
          ),
        ),
        ListTile(
          title:  Text(option2),
          leading: Radio<Radioptions>(
            value: Radioptions.B,
            groupValue: _character,
            onChanged: (Radioptions? value) {
             setState(() {
                _character = value;   
                buttondisabled = false;
                chosen_answer = option2;
              if(chosen_answer == final_answer) {
                  correct_flag = 1;
                  correct_num = correct_num + 1;
                  player.play(AssetSource('../audio/correct.mp3'));
                }
                else {
                  correct_flag = 0;
                  player.play(AssetSource('../audio/wrong.mp3'));
                }
                DialogBackground(
                  blur: 5,
   dialog: AlertDialog(
      title: (correct_flag == 1) ?Text("CORRECT!!! 😀") :Text('INCORRECT!!! 😕'),
      content: (correct_flag == 1) ?Text(" ") :Text("Correct answer is ' $final_answer '"),
      actions: <Widget>[
        TextButton(child: Text("Okay"), onPressed: () => Navigator.pop(context)),
      ],
    ),
  ).show(context);
              

              });
            },
          ),
        ), 
       ListTile(
          title: (!TF_flag)?  Text(option3) :null,
          leading:(!TF_flag)?  Radio<Radioptions>(
            value: Radioptions.C,
            groupValue: _character,
            onChanged: (Radioptions? value) {
               setState(() {
                _character = value;   
                buttondisabled = false;
                chosen_answer = option3;
              if(chosen_answer == final_answer) {
                  correct_flag = 1;
                  correct_num = correct_num + 1;
                  player.play(AssetSource('../audio/correct.mp3'));
                }
                else {
                  correct_flag = 0;
                  player.play(AssetSource('../audio/wrong.mp3'));
                }
                DialogBackground(
                  blur: 5,
   dialog: AlertDialog(
      title: (correct_flag == 1) ?Text("CORRECT!!! 😀") :Text('INCORRECT!!! 😕'),
      content: (correct_flag == 1) ?Text(" ") :Text("Correct answer is ' $final_answer '"),
      actions: <Widget>[
        TextButton(child: Text("Okay"), onPressed: () => Navigator.pop(context)),
      ],
    ),
  ).show(context);
             
              });
            },
          ) :null,
        )  , 
         ListTile(
          title:   (!TF_flag)? Text(option4) :null,
          leading:  (!TF_flag)? Radio<Radioptions>(
            value: Radioptions.D,
            groupValue: _character,
            onChanged: (Radioptions? value) {
             setState(() {
                _character = value;   
                buttondisabled = false;
                chosen_answer = option4;
              if(chosen_answer == final_answer) {
                  correct_flag = 1;
                  correct_num = correct_num + 1;
                  player.play(AssetSource('../audio/correct.mp3'));
                }
                else {
                  correct_flag = 0;
                  player.play(AssetSource('../audio/wrong.mp3'));
                }
                DialogBackground(
                  blur: 5,
   dialog: AlertDialog(
      title: (correct_flag == 1) ?Text("CORRECT!!! 😀") :Text('INCORRECT!!! 😕'),
      content: (correct_flag == 1) ?Text(" ") :Text("Correct answer is ' $final_answer '"),
      actions: <Widget>[
        TextButton(child: Text("Okay"), onPressed: () => Navigator.pop(context)),
      ],
    ),
  ).show(context);
             
              });
     
            },
          ) : null,
        ), 
         Text("Question $Qtotalint ", style: TextStyle(fontSize: 20)),
  
         SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                  minHeight: 5,
                  value: _initial,
                ),
              ),
  

               ElevatedButton(
       onPressed: buttondisabled? null  : (){

         showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content: const Text("Are you sure you want to exit?"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
     return Welcome(score: '$score/$Qtotal');
   }));
                  
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("Yes"),
                        
                      ),
                      
                    ),
  
                  ],
                ),
              );

    

       },
       child: const Text("Exit quiz")
),
 SizedBox(height:30),
Text("Score: $score/$Qtotal ", style: TextStyle(fontSize: 20)),
            ])));
                
             
  }


Future<bool> check_completion(Qtotal) async {
if(Qtotal == 5) {return true;}
return false;
}

List<String> question(qlist) {
  var randVal = Random();
  int qindex = 0;
  int min=0; int max=0;
  String qtext = ' ';
  int answer = 0;
  String final_answer = ' ';
  int largenum = 0,pred;
  String firstnum , secondnum;
  String Mans;
 
  List<String> result = [];
  List<String> options = [];
  String option1 = '', option2 = '', option3 = '';
  var num1 = Random().nextInt(9);
    var num2 = Random().nextInt(100);
    var hcfn1 = Random().nextInt(50);
    var hcfn2 = Random().nextInt(50);
    var num3 = Random().nextInt(10000);
    int num4 = Random().nextInt(1000000);
    var num5 = Random().nextInt(20); 
    var quotient = 0;
    var remainder = 0;
 //qlist.shuffle();
  // qindex = randVal.nextInt(25);
   qindex = randomUnique(qindex,_setOfInts);
   //qindex = 3;

   result.add(qlist[qindex].question);
   
   options.add(qlist[qindex].option1);
   options.add(qlist[qindex].option2);
   options.add(qlist[qindex].option3);
   options.add(qlist[qindex].option4);
   options.add(qlist[qindex].answer);
   options.add(qlist[qindex].TF_flag.toString());
   //options.shuffle();
   actual_answer = final_answer;
   result.add(options[0]);
   result.add(options[1]);
   result.add(options[2]);
   result.add(options[3]);
   result.add(options[4]);
   result.add(options[5]);
   return result;
}
  bool updateToNext() {
    bool completion_flag = false;
    setState(() {
      _initial = _initial + 0.1;
      if (_initial > 1.0) {
        completion_flag = true;
      }
    });
    return completion_flag;
  }

 // void updateToPrev() {
 //   setState(() {
  //    _initial = _initial - 0.1;
  //    if (_initial < 0.1) {
  //      _initial = 1.0;
  //    }
 //   });
 // }

  void showNextCard() {
    setState(() {
    question(qlist);
      // currval = randVal;
    });
  }

  void showreply() {

  }
}
//void showPreviousCard() {
 //   setState(() {
 //     _currentIndexNumber = _currentIndexNumber - 1;
  //  });
 // }

int randomUnique(qindex,_setOfInts) {
  var randVal = Random(); int delta = 0;
 
  delta = randVal.nextInt(5);
   qindex = randVal.nextInt(70) + delta;
  if(_setOfInts.contains(qindex)) {
    return randomUnique(qindex, _setOfInts);
  }
  else {
    _setOfInts.add(qindex);
  return qindex;
  }
  
}


Set<int> factors(N) {
  Set<int> result = {};
  for (var i=1; i<=N/i; ++i) {
    if(N%i == 0) {
     result.add(i);
     result.add((N / i).floor());
   }
  }
  return result;
}

void showAlert(chosen_answer,actual_answer) {
  
}

int hcf(X,Y) {
  int result = 0;
  for (var i=1; i<=X/i; ++i) {
    if((X%i == 0) & (Y%i == 0)) {
      if(i > result) {
        result = i;
      }
    }
  }
  return result;
}



