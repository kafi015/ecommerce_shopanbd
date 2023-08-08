import 'package:ecommerce_shopanbd/ui/screens/splash_screen.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
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
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 1
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
          )
        ),
      ),
    );
  }
}


//Class 47
// 03 May 2023
// 20 min done
