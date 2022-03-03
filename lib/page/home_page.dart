import 'package:flutter/material.dart';
import 'package:quis/domain/question.dart';
import 'package:quis/page/question_page.dart';

class Homepage extends StatelessWidget {
   const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _questions = [
      'Frage 1',
      'Frage 2',
      'Frage 3',
    ];

    final _answers = [
      ['Falsche Antwort',
        'Richtige Antwort',
        'Falsche Antwort'],

      ['Richtige Antwort',
        'Falsche Antwort',
        'Falsche Antwort'],

      ['Falsche Antwort',
        'Falsche Antwort',
        'Richtige Antwort'],
    ];

    final _objectQuestion = [
      Question(_questions[0], _answers[0], 1),
      Question(_questions[1], _answers[1], 0),
      Question(_questions[2], _answers[2], 2),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quis'),
      ),
      body: QuestionPage(_objectQuestion),
    );
  }
}
