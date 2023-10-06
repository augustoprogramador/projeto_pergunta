import 'package:flutter/material.dart';
import 'package:projeto_pergunta/questionario.dart';
import 'package:projeto_pergunta/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _nextQuestion = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'question': 'Qual é a sua cor favorita?',
      'answer': [
        {
          'texto': 'Azul',
          'pontuacao': 10,
        },
        {
          'texto': 'Vermelho',
          'pontuacao': 5,
        },
        {
          'texto': 'Preto',
          'pontuacao': 3,
        },
        {
          'texto': 'Verde',
          'pontuacao': 7,
        },
      ]
    },
    {
      'question': 'Qual é o seu animal favorito?',
      'answer': [
        {
          'texto': 'Gato',
          'pontuacao': 5,
        },
        {
          'texto': 'Cachorro',
          'pontuacao': 3,
        },
        {
          'texto': 'Papagaio',
          'pontuacao': 7,
        },
        {
          'texto': 'Peixe',
          'pontuacao': 10,
        }
      ]
    },
    {
      'question': 'Qual o seu instrutor favorito?',
      'answer': [
        {
          'texto': 'José',
          'pontuacao': 5,
        },
        {
          'texto': 'Ana',
          'pontuacao': 3,
        },
        {
          'texto': 'Leo',
          'pontuacao': 7,
        },
        {
          'texto': 'João Ribeiro',
          'pontuacao': 10,
        }
      ]
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _nextQuestion++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _nextQuestion < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                nextQuestion: _nextQuestion,
                responder: _responder,
              )
            : const Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() => _PerguntaAppState();
}
