import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  
  // get is not function. It is normal property but value is calculated dynamically
  String get resultBack {
    var resultText;
    if (resultScore <= 8) { 
      resultText = 'You are so bad!';
    } else if (resultScore <=12) {
      resultText = 'You are ... strange?!';
    } else if (resultScore <= 16) {
      resultText = 'Pretty likeable';
    } else {
      resultText = 'You are awsome and innocent!';
    }
    return resultText + ' and You scored ' + ' $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Click mouse 2 and find refactor
      child: Column(
        children: <Widget>[
          Text(
            resultBack,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,  
          ),
          // FlatButton is button without background color
          FlatButton(
            child: Text('Retry again'),
            textColor: Colors.deepOrange,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}