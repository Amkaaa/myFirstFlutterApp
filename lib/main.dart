// Part 03 - Lesson 6
// Need study more about packeges
// Flutter is controlling all UI of application. Dart provides behavior
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/* void main() 
{
  // runApp нь миний бичсэн виджетийг дамжуулна.
  // runApp-г Flutter team хөгжүүлсэн
  runApp(AmkaApp());
} */

void main() => runApp(AmkaApp());

// Need study more about material dart class
// There is 2 type of State. Stateful and Stateless
class AmkaApp extends StatefulWidget
{
  @override // What is this override actually?
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AmkaAppState();
  }
}

// This concept is called "Leafling State App ". you mangaged the state on the shared common denomator.

// _ turn into this class to private class
class _AmkaAppState extends State<AmkaApp> 
{
  // first const says variable is constant
    // second const says value is constant, during compile time constant
    // const questions = const [

    final _questions = const [ // or we can use static const questions = [ 
      //Data Structure Map. First words are key, second ones are value
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text':'Black', 'score': 10}, 
          {'text':'Blue', 'score': 5},
          {'text':'White', 'score': 2},
          {'text':'Green', 'score': 1}
        ],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': [
          {'text':'Pizza', 'score': 1},
          {'text':'Burger', 'score': 2},
          {'text':'Dumpling', 'score': 5},
          {'text':'Хуушуур', 'score': 10}
        ],
      },
      {
        'questionText': 'What\'s your favorite singer?',
        'answers': [
          {'text':'Сумъяа', 'score': 10},
          {'text':'Ука', 'score': 1},
          {'text':'Болд', 'score': 2},
          {'text':'Сүхээ', 'score': 5}
        ],
      },
      {
        'questionText': 'What\'s your favorite NBA Star?',
        'answers': [
          {'text':'James Harden', 'score': 5},
          {'text':'Lebron James', 'score': 2},
          {'text':'Stephen Curry', 'score': 10},
          {'text':'Kevin Durant', 'score': 1}
        ],
      },
    ];

    // now this is new element. Override old one. If you declare var above
    //questions = [];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQ(int score) {
    //forces flutter to use re-rendered UI that called in build method.
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length ) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
  // Not required. But for decorator. Make our code clean and clear.
  @override 
  Widget build( BuildContext context ) 
  {
    // Scaffold => app base page design хийх боломж өгдөг.
    // Ctrl + space show us suggestion
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "I love you Sumiya"
          ),
        ),
        // Main dart file is common denomator, shared widget between answer and question widget 
        // Body takes only one Widget
        body: _questionIndex < _questions.length 
        ? Quiz(
            answerQ: _answerQ, 
            questionIndex: _questionIndex, 
            questions: _questions,
          ) 
        : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}