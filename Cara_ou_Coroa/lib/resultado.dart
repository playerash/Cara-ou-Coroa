import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  int resultado;
  Resultado(this.resultado);
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.resultado == 0 ? Image.asset('imagens/moeda_cara.png'):
            Image.asset('imagens/moeda_coroa.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('imagens/botao_voltar.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
