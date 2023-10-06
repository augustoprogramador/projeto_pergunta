import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado({required this.pontuacao, super.key});

  String get fraseResultado {
    if (pontuacao < 8) return 'Você é bom';
    if (pontuacao < 12) return 'Parabéns!';
    if (pontuacao < 16) return 'Impressionante!!!';
    return 'JEDI!!!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
