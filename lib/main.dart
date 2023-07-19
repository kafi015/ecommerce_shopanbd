import 'package:ecommerce_shopanbd/ui/screens/email_verification_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    const ShopanBD()
  );
}

class ShopanBD extends StatelessWidget {
  const ShopanBD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmailVerificationScreen(),
    );
  }
}
