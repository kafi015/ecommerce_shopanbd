import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({
    super.key, required this.controller, required this.hintText, required this.textInputType,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        cursorColor: primaryColor,
        decoration:  InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0)),
        ),
      ),
    );
  }
}
