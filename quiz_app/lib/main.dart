import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
 int index=0;
  void answerQuestion(){
    setState(() {
      index++;
    });
    
    print(index);
  }

  @override
  Widget build(BuildContext context){
     
     var questions =[
       'What is your favorite color?',
       'Whay is yout favorite animal?',
     ];
    return MaterialApp(
      home: Scaffold(
         appBar:AppBar(
           title: Text('QuizApp'),
           ),
      body: Column(
        children: <Widget>[
        Text(questions[index],
        ),
        RaisedButton(
          child: Text('Answer 1'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Answer 2'),
          onPressed: answerQuestion,),
        RaisedButton(
          child: Text('Answer 3'),
          onPressed: answerQuestion,),
      ]
      ,),
    ),
    ); 
  }
}