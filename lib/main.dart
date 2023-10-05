import 'package:flutter/material.dart';
import 'package:projeto_pergunta/questao.dart';
import 'package:projeto_pergunta/resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _nextQuestion = 0;

  void _responder() {
    _nextQuestion++;
    print(_nextQuestion);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'question': 'Qual é a sua cor favorita?',
        'answer': [
          'Azul',
          'Vermelho',
          'Preto',
          'Verde',
        ]
      },
      {
        'question': 'Qual é o seu animal favorito?',
        'answer': [
          'Gato',
          'Cachorro',
          'Papagaio',
          'Peixe',
        ]
      },
      {
        'question': 'Qual o seu instrutor favorito?',
        'answer': [
          'José',
          'Ana',
          'Leo',
          'João Ribeiro',
        ]
      },
    ];
    final List<String> respostas = perguntas[_nextQuestion].cast()['answer'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_nextQuestion]['question'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() => _PerguntaAppState();
}
