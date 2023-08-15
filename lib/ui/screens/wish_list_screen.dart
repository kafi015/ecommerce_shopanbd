import 'package:ecommerce_shopanbd/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_managers/product_controller.dart';
import '../state_managers/wish_list_controller.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<ProductController>().getProductByCategory(3);
      Get.find<WishListController>().getWishlist();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Wish List'),
      //   leading: IconButton(
      //     onPressed: () {
      //       Get.find<BottomNavigationBarController>().backToHome();
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back,
      //       color: greyColor,
      //     ),
      //   ),
      // ),
      body: ProductListScreen(categoryId: 3, categoryName: 'WishList',),
    );
  }
}
