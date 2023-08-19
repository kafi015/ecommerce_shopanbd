import 'package:ecommerce_shopanbd/new/products.dart';
import 'package:ecommerce_shopanbd/ui/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../new/n_product_cart.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List'),
        leading: const BottomNavAppBarBackButton(),
      ),
      body: GetBuilder<Products>(builder: (productController) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 2/1.7

              ),
              itemCount: productController.wishList.length,
              itemBuilder: (context, index) {
                int pIndex = productController.products.indexOf(productController.wishList[index]);
                return NProductCart(
                  image: productController.wishList[index]['image'],
                  price: productController.wishList[index]['price'],
                  title: productController.wishList[index]['title'],
                  rating: productController.wishList[index]['rating'],
                  index: pIndex,
                  previoutScreen: 'WishList',
                  productID: productController.wishList[index]['id'],
                );
              }),
        );
      }),
    );
  }
}
