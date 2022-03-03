import 'package:flutter/material.dart';

class Question {
  final question;
  final List<String> answers;
  final int rightAnswerIndex;

  Question(this.question, this.answers, this.rightAnswerIndex);

}