import 'package:flutter/material.dart';

class ArithmeticButton extends StatelessWidget {
  const ArithmeticButton(this.text, {super.key, this.operation});

  final String text;
  final void Function()? operation;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 67, 62, 62),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
