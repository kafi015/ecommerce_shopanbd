import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/app_colors.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/title_text.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
                text: "Enter OTP Code",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'A 4 Digit OTP Code has been Sent',
                style: TextStyle(
                  fontSize: 18,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                controller: TextEditingController(),
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 45,
                    fieldWidth: 45,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: Colors.green,
                    activeColor: primaryColor,
                    inactiveColor: primaryColor,
                    inactiveFillColor: Colors.white),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                onCompleted: (v) {},
                onChanged: (value) {},
                appContext: context,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButtonApp(
                onPressed: () {},
                title: 'Next',
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 13, color: greyColor),
                  text: 'This code will be expire in ',
                  children: [
                    TextSpan(
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w600),
                      text: '120s',
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyle(color: greyColor.withOpacity(0.5)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
