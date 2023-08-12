import 'dart:developer';

import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/user_auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/app_colors.dart';
import '../../utils/snakbar_message.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/title_text.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key, required this.email}) : super(key: key);
  final String email;

  final TextEditingController _otpETController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<UserAuthController>(
          builder: (authController) => Center(
            child: Form(
              key: _formKey,
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
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter the otp';
                      } else {
                        return null;
                      }
                    },
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    controller: _otpETController,
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
                  authController.otpVarificationInProgress
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                      : ElevatedButtonApp(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final bool response =
                                  await authController.otpVarification(
                                      email, _otpETController.text);
                              //log(response as String);
                              if (response) {
                                log('home screen');
                                Get.offAll(const HomeScreen());
                              } else {
                                log('fail');
                                Get.showSnackbar(const GetSnackBar(
                                  duration: Duration(seconds: 2),
                                  title: 'OTP Verification failed.',
                                  message:
                                      'Check otp once again before enter it.',
                                ));
                              }
                            } else {
                              showSnackBarMessage(
                                  context,
                                  "Please enter otp. Then press next.",
                                  Colors.red);
                            }
                          },
                          title: 'Next',
                        ),
                  /*Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    width: double.infinity,
                      child: ElevatedButton(onPressed: () {                  Get.to(CompleteProfileScreen());
                      }, child: Text('Next'))),*/
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 13, color: greyColor),
                      text: 'This code will be expire in ',
                      children: [
                        TextSpan(
                          style: const TextStyle(
                              color: primaryColor, fontWeight: FontWeight.w600),
                          text: '${authController.getStartCountDown}s',
                        ),
                      ],
                    ),
                  ),
                  authController.getStartCountDown > 0
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Resend Code',
                            style: TextStyle(color: greyColor.withOpacity(0.5)),
                          ),
                        )
                      : TextButton(
                          onPressed: () async {
                            final bool response =
                                await authController.emailVarification(email);
                            if (response) {
                              authController.startTimer();
                            } else {
                              Get.showSnackbar(const GetSnackBar(
                                title: 'Email Varification Failed.',
                                duration: Duration(seconds: 2),
                              ));
                            }
                          },
                          child: Text(
                            'Resend Code',
                            style: TextStyle(color: greyColor.withOpacity(0.5)),
                          ),
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
