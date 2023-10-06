import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() jogarNovamente;

  Resultado({required this.pontuacao, required this.jogarNovamente, super.key});

  String get fraseResultado {
    if (pontuacao < 8) return 'Você é bom';
    if (pontuacao < 12) return 'Parabéns!';
    if (pontuacao < 16) return 'Impressionante!!!';
    return 'JEDI!!!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: jogarNovamente,
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
          ),
          child: const Text(
            'Jogar novamente?',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
