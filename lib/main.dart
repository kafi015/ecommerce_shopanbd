import 'package:ecommerce_shopanbd/ui/screens/splash_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/bottom_nav_bar_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:ecommerce_shopanbd/ui/utils/text_style.dart';
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
      initialBinding: GetxBinding(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        appBarTheme:  AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 24,
            color: greyColor,
            fontWeight: FontWeight.w600
          ),
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
class GetxBinding extends Bindings{
  @override
  void dependencies() {
  //  Get.create<BottomNavigationBarController>(() => BottomNavigationBarController());
   // Get.put(() => BottomNavigationBarController());
    Get.put(BottomNavigationBarController());
  }
}


//Class 47
// 03 May 2023
// 20 min done
