import 'dart:io';
import 'dart:math';

import 'package:Cara_ou_Coroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: TelaInicial(),
    ));
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    void _exibirResultado() {
      int resultado = Random().nextInt(2);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Resultado(resultado),
          ));
    }

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset('imagens/logo.png'),
          ),
          GestureDetector(
            onTap: _exibirResultado,
            child: Image.asset('imagens/botao_jogar.png'),
          )
        ],
      ),
    );
  }
}
