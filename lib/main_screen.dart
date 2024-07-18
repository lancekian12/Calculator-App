import 'package:flutter/material.dart';
import 'package:calculator_app/arithmetic_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController firstValueController = TextEditingController();
  final TextEditingController secondValueController = TextEditingController();
  String result = '';

  void addition() {
    final num1 = double.tryParse(firstValueController.text);
    final num2 = double.tryParse(secondValueController.text);
    if (num1 != null && num2 != null) {
      setState(() {
        result = (num1 + num2).toString();
      });
    }
  }

  void subtraction() {
    final num1 = double.tryParse(firstValueController.text);
    final num2 = double.tryParse(secondValueController.text);
    if (num1 != null && num2 != null) {
      setState(() {
        result = (num1 - num2).toString();
      });
    }
  }

  void multiplication() {
    final num1 = double.tryParse(firstValueController.text);
    final num2 = double.tryParse(secondValueController.text);
    if (num1 != null && num2 != null) {
      setState(() {
        result = (num1 * num2).toString();
      });
    }
  }

  void division() {
    final num1 = double.tryParse(firstValueController.text);
    final num2 = double.tryParse(secondValueController.text);
    if (num1 != null && num2 != null && num2 != 0) {
      setState(() {
        result = (num1 / num2).toString();
      });
    } else if (num2 == 0) {
      setState(() {
        result = 'Cannot divide by zero';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 133, 128, 128),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: firstValueController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Input first value:',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    TextFormField(
                      controller: secondValueController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Input second value:',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 50),
                    ArithmeticButton(
                      "Addition",
                      operation: addition,
                    ),
                    ArithmeticButton(
                      "Subtraction",
                      operation: subtraction,
                    ),
                    ArithmeticButton(
                      "Multiplication",
                      operation: multiplication,
                    ),
                    ArithmeticButton(
                      "Division",
                      operation: division,
                    ),
                    const SizedBox(height: 80),
                    Text(
                      result,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
