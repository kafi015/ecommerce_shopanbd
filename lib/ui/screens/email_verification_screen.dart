import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';
import '../widgets/text_form_field.dart';
import '../widgets/title_text.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/App_Logo.jpg',
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleText(
                text: "Welcome Back",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Please enter your email address',
                style: TextStyle(
                  fontSize: 18,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormFieldApp(
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButtonApp(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
