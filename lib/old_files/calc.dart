import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  final List<String> buttons = [
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    'C',
    '0',
    '=',
    '+'
  ];

 CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: buttons.map((buttonText) {
          return CalculatorButton(text: buttonText);
        }).toList(),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
 final String? text;

  const CalculatorButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
