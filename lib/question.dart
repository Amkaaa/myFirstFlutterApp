import 'package:flutter/material.dart';
//

// We cant use _ because we gonna use it main dart
class Question extends StatelessWidget {
  // that questionText could be change. But if you put final at front of that. It make it unchangeable.
  final String questionText;


  // it is not named argument, it is positional argument(only one)
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // Container Widget is Special widget for layout. For example, spacing
    // Container has (Margin > Border > Padding > child (= Content))

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text( 
        questionText, 
        style: TextStyle(fontSize: 28),
        // Checkout more from official site
        textAlign: TextAlign.center, 
      ),
    );
  }
}