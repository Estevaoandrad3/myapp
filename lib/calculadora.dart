

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String _display = '0';

  void _precionarBotao(String valor) {
    setState(() {
      if (valor == 'C') {
        _display = '0';
      } else if (valor == '=') {
        // Lógica de cálculo aqui
      } else {
        _display = _display == '0' ? valor : _display + valor;
      }
    });
  }

  Widget _botao(String valor) {
    return TextButton(
      child: Text(
        valor,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      onPressed: () => _precionarBotao(valor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200],
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _display,
                style: const TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                _botao('7'),
                _botao('8'),
                _botao('9'),
                _botao('/'),
                _botao('4'),
                _botao('5'),
                _botao('6'),
                _botao('*'),
                _botao('1'),
                _botao('2'),
                _botao('3'),
                _botao('-'),
                _botao('0'),
                _botao('C'),
                _botao('='),
                _botao('+'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
