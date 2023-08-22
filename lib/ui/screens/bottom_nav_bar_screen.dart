import 'package:ecommerce_shopanbd/ui/screens/cart_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/category_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/wish_list_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/bottom_nav_bar_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/category_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/home_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/product_by_remark_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_managers/product_controller.dart';

class BottomNavBarScreen extends StatefulWidget {
   const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishListScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<HomeController>().getHomeSlider();
    Get.find<CategoryController>().getCategories();
    Get.find<ProductByRemarkController>().getPopularRemarkProducts();
    Get.find<ProductByRemarkController>().getSpecialRemarkProducts();
    Get.find<ProductByRemarkController>().getNewRemarkProducts();
    Get.find<ProductController>().getProductByCategory(3);

  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> _onBackButtonPress(context),
      child: Scaffold(
        bottomNavigationBar: GetBuilder<BottomNavigationBarController>(
          builder:(controller) => BottomNavigationBar(
            elevation: 4,
            backgroundColor: Colors.white,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.black38,
            selectedFontSize: 14,
            unselectedFontSize: 10,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
            },
            currentIndex: controller.selectedIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_sharp), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Wish List"),
            ],
          ),
        ),
        body: GetBuilder<BottomNavigationBarController>(
          builder: (controller)=>screens[controller.selectedIndex],
            ),
      ),
    );
  }
}

Future<bool> _onBackButtonPress (BuildContext context) async {
  bool? exitApp =await showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: const Text('Alert'),
      content: const Text('Do you want to exit?'),
      actions: <Widget>[
        ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child:  const Text('No')),
        ElevatedButton(onPressed: (){Navigator.of(context).pop(true);}, child:  const Text('Yes')),
        // TextButton(onPressed: (){
        //   Navigator.of(context).pop(false);
        // }, child: Text('No')),
        // TextButton(onPressed: (){
        //   Navigator.of(context).pop(true);
        // }, child: Text('Yes')),
      ],
    );
  }
  );
  return exitApp ?? false;
}