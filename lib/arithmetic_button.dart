import 'package:flutter/material.dart';

class ArithmeticButton extends StatelessWidget {
  const ArithmeticButton(this.label, {super.key, required this.operation});

  final String label;
  final VoidCallback operation;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: operation,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 67, 62, 62),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
      ),
    );
  }
}
