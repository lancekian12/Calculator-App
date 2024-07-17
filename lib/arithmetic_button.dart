import 'package:flutter/material.dart';

class ArithmeticButton extends StatelessWidget {
  const ArithmeticButton(this.text, {super.key, required this.operation});

  final String text;
  final void Function() operation;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: operation,
      child: Text(text),
    );
  }
}
