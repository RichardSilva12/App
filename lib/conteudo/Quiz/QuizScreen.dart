import 'package:flutter/material.dart';
import 'exports.dart';
import 'dart:math';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Set<int> usedIndexes = {}; // Conjunto para armazenar índices já utilizados.
  Random random =
      Random(); // Instância de Random para gerar números aleatórios.

  int correctAnswers = 0;
  bool showQuestion = true;
  int _currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (showQuestion) {
      getNextQuestionIndex();
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Questão ${_currentQuestionIndex}/${QuizData.questions.length}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        titleSpacing: 24,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            if (showQuestion)
              Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    QuizData.questions[usedIndexes.last].question,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    QuizData.questions[usedIndexes.last].imagePath,
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text('Verdadeiro'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text('Falso'),
                  ),
                ],
              ),
            if (!showQuestion)
              AnswerVerification(
                question: QuizData.questions[usedIndexes.last],
                correctAnswer: QuizData.questions[usedIndexes.last].answer,
                onNextQuestion: goToNextQuestion,
              ),
          ],
        ),
      ),
    );
  }

  void getNextQuestionIndex() {
    if (usedIndexes.length < QuizData.questions.length) {
      int nextIndex;
      do {
        nextIndex = random.nextInt(QuizData.questions.length);
      } while (usedIndexes.contains(nextIndex));
      usedIndexes.add(nextIndex);
      _currentQuestionIndex++;
    } else {
      showQuestion = false;
    }
  }

  void checkAnswer(bool selectedAnswer) {
    bool isCorrect =
        selectedAnswer == QuizData.questions[usedIndexes.last].answer;
    bool userAnswer = selectedAnswer;
    if (isCorrect) {
      setState(() {
        correctAnswers++; // Incrementa o número de respostas corretas
        showQuestion = false; // Mostra a tela de verificação da resposta
        _showFeedback('Acertou!');
      });
    } else {
      setState(() {
        showQuestion = false; // Mostra a tela de verificação da resposta
        _showFeedback('Errou!');
      });
    }
  }

  void _showFeedback(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: message == 'Acertou!' ? Colors.green : Colors.red,
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void goToNextQuestion() {
    setState(() {
      if (usedIndexes.length < QuizData.questions.length) {
        showQuestion = true;
      } else {
        navigateToResultScreen();
      }
    });
  }

  void navigateToResultScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ResultScreen(correctAnswers, QuizData.questions.length),
      ),
    );
  }
}
