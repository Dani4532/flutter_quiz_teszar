import 'package:flutter/material.dart';
import 'package:quis/domain/question.dart';
import 'package:quis/widget/question_widget.dart';
import 'package:quis/widget/reset.dart';

class QuestionPage extends StatefulWidget {
  final List<Question> questions;

  const QuestionPage(this.questions, {Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var correctAnswers = 0;
  var questionIndex = 0;

  void _buttonPressed(int index) {
    setState(() {
      if (index == widget.questions[questionIndex].rightAnswerIndex) {
        correctAnswers++;
      }

      if (questionIndex < widget.questions[questionIndex].answers.length) {
        questionIndex++;
      }
    });
  }

  void _reset() {
    setState(() {
      questionIndex = 0;
    });
    correctAnswers = 0;
  }

  @override
  Widget build(BuildContext context) {
    return questionIndex < widget.questions.length
        ? QuestionWidget(widget.questions, questionIndex, _buttonPressed)
        : ResetPage(
            widget.questions,
            correctAnswers,
            _reset,
          );
  }
}
