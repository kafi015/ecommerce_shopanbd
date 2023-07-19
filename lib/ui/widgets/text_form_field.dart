import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({
    super.key, required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        controller: controller,
        cursorColor: primaryColor,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0)),
        ),
      ),
    );
  }
}
