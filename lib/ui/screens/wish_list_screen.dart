import 'package:ecommerce_shopanbd/ui/state_managers/wish_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widgets/appbar_back_button.dart';
import '../widgets/product_card.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<WishListController>().getWishlist();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<WishListController>(builder: (wishListController) {
        if (wishListController.getWishListInProgress) {
          return const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          );
        } else {
          return GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: wishListController
                  .getwishListModel.wishListData!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                return ProductCart(
                    product: wishListController
                        .getwishListModel.wishListData![index].product!);

                // return  ProductCart(product: ,);
              });
        }
      }),


      appBar: AppBar(
        leading: const BottomNavAppBarBackButton(),
        title: const Text('Wish List'),
      ),
    );
  }
}
