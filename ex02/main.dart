import 'package:flutter/material.dart';
import 'package:tabuada/pergunta.dart';
import 'package:tabuada/questoes.dart';

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
  Pergunta controle = questoes[0];
  final controlaTexto = TextEditingController();
  String mensagem = "Incorreto";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controlaTexto.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   Usando Google fonts, ajuste a fonte da frase para Montserrat e do autor para Ms Madi, use o tamanho 28 para o texto e 18 para o autor.

        Text(
          controle.texto,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controlaTexto,
            onChanged: (value) {
              setState(() {
                if (value == controle.resposta) {
                  mensagem = "Correta!";
                } else {
                  mensagem = "Incorreta!";
                }
              });
            },
          ),
        ),
        Text(mensagem),
      ],
    );
  }
}
