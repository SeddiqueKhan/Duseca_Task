import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback callback;
  const TextButtonWidget({super.key, required this.buttonText, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
    style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
            )
        ),
      backgroundColor: MaterialStateProperty.all(Colors.red),
    ),
        child: Text(buttonText, style: const TextStyle(color: Colors.white),));
  }
}
