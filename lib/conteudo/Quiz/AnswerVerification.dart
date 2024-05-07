import 'package:flutter/material.dart';
import 'exports.dart';

class AnswerVerification extends StatelessWidget {
  final Question question;
  final bool correctAnswer;
  final Function onNextQuestion;

  AnswerVerification({
    required this.question,
    required this.correctAnswer,
    required this.onNextQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.question,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text('${correctAnswer ? 'Verdadeiro!' : 'Falso!'}\n',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            //Image.asset('${question.imagePath}'),
            Text(
              '${question.textAnswer}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                onNextQuestion();
              },
              child: Text('OK'),
            ),
          ],
        ));
  }
}
