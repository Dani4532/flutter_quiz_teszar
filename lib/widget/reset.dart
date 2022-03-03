import 'package:flutter/material.dart';
import 'package:quis/domain/question.dart';

class ResetPage extends StatelessWidget {
  final List<Question> questions;
  var correctAnswers;
  final void Function() reset;

  ResetPage(this.questions, this.correctAnswers, this.reset, {Key? key})
      : super(key: key);

  double _calc() {

      return correctAnswers / questions.length;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Container(
            child: Text(
              correctAnswers.toString() + ' / ' + questions.length.toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            margin: const EdgeInsets.all(60),
          ),
          LinearProgressIndicator(
            minHeight: 50,
            value: _calc(),
          ),
          TextButton(
            onPressed: () => reset(),
            child: Container(
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(60),
            ),
          ),
        ],
      ),
    );
  }
}
