// main.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wikipedia/wiki_controle.dart';
import 'wiki_controle.dart';

void main() {
  runApp(const Janela());
}

class Janela extends StatelessWidget {
  const Janela({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Principal()),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  WikiControle controle = WikiControle();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   Usando Google fonts, ajuste a fonte da frase para Montserrat e do autor para Ms Madi, use o tamanho 28 para o texto e 18 para o autor.

        Image.network(
          controle.fotoAtual.urli,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              controle.fotoAtual.mudaLike();
            });
          },
          child: Icon(controle.fotoAtual.liked
              ? Icons.favorite
              : Icons.favorite_border),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                controle.proximaFrase();
              });
            },
            child: Text('Próxima'))
      ],
    );
  }
}
