import 'package:flutter/material.dart';
import 'package:quis/domain/question.dart';

class QuestionWidget extends StatelessWidget {
  final List<Question> questions;
  var questionIndex;
  final void Function(int index) buttonPressed;

  QuestionWidget(this.questions, this.questionIndex, this.buttonPressed,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            questions[questionIndex].question,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(20),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: questions[0].answers.length,
            itemBuilder: (_, index) {
              return Container(
                child: TextButton(
                  onPressed: () => buttonPressed(index),
                  child: Text(
                    questions[questionIndex].answers[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(5),
              );
            },
          ),
        ),
      ],
    );
  }
}
