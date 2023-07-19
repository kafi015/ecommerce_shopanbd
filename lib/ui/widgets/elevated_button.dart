import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class ElevatedButtonApp extends StatelessWidget {
  const ElevatedButtonApp({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ElevatedButton(

            style: ElevatedButton.styleFrom(backgroundColor: primaryColor,),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Next',
                style: buttonTextStyle,
              ),
            )),
      ),
    );
  }
}
