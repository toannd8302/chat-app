import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool oscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.oscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: oscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondaryContainer),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
