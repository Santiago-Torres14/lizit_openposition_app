import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function onPressed;

  const ProductControl({Key? key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("Add product"),
      onPressed: () {
        onPressed('Sweets');
      },
    );
  }
}