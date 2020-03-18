// Lecture basics 24 watch again
// this import unlocks on StatelessWidget
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // certain Text locked in final
  // final is runtime constant value
  // const is compile time constant value. compile time constant implicitly means runtime constant
  final Function answerSelector;
  final String answerText;

  // answerSelector is input,  answerText is output
  Answer(this.answerSelector, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //helper property on double object
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText), 
        onPressed: answerSelector,
        ),
    );
  }
}