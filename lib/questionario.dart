import 'package:flutter/material.dart';
import 'package:projeto_pergunta/questao.dart';
import 'package:projeto_pergunta/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int nextQuestion;
  final Function() responder;

  const Questionario({
    required this.perguntas,
    required this.nextQuestion,
    required this.responder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> respostas = perguntas[nextQuestion].cast()['answer'];
    return Column(
      children: [
        Questao(perguntas[nextQuestion]['question'].toString()),
        ...respostas.map((t) => Resposta(t, responder)).toList(),
      ],
    );
  }
}
