import 'package:ecommerce_shopanbd/ui/screens/bottom_nav_bar_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/signup_login/email_verification_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../new/products.dart';
import '../utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) async{
      final bool logInState = await Get.find<AuthController>().isLoggedIn();
      if(logInState) {
        Get.find<Products>().setCartQuantity();
        Get.off(const BottomNavBarScreen());
      }
          else
            {
             // Get.off(const BottomNavBarScreen());
              Get.off(const EmailVerificationScreen());
            }


    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Center(
                    child: Image.asset(
              "assets/App_Logo.jpg",
              width: 180,
            ))),
            const Column(
              children: [
                CircularProgressIndicator(
                  color: primaryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Vertion 1.0.0",
                    style: TextStyle(color: greyColor,
                    letterSpacing: 0.4
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
