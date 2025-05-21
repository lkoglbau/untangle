import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterTypeinField extends StatelessWidget {
  final String text;
  final controller;
  final bool obscureText;

  const RegisterTypeinField({
    super.key,
    required this.text,
    required this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]!, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[700]!),
            borderRadius: BorderRadius.circular(10),
          ),

          hintText: text,
          fillColor: Colors.grey[700],
          filled: true,
        ),
      ),
    );
  }
}
