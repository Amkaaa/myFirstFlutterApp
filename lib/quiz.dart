import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // runtime const value
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQ;
  
  Quiz(
    { 
      @required this.questions, 
      @required this.answerQ, 
      @required this.questionIndex, 
    }
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      // Text(questions.elementAt(questionIndex)),
        Question(
          questions[questionIndex]['questionText'],
        ),
          // access questions(which is list) and map into something else.
          // map is not changing original list, it generates new list instead of it, based on old list.
          // ... -> spread operator. It takes list, pull all the values in that list out of it, and add them in surrounding list as an individual values.
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
            // () => санах ойн хаягийг локаль орчинд нөөцлөхгүйгээр хадгалж авна.
            return Answer(() => answerQ(answer['score']), answer['text']);
          }).toList()
        
        /* RaisedButton(
          child: Text('Хариулт Б'), 
          onPressed: () => print("Хариулт Б-г сонголоо"),
          ),
        RaisedButton(
          child: Text('Хариулт В'), 
          onPressed: () {
            // ....
            print("Хариулт В-г сонголоо");  
          },
          ),
        RaisedButton(
          child: Text('Хариулт Г'), 
          onPressed: () => print("Хариулт Г-г сонголоо"),
          ), */
      ],
    ) ;
  }
}