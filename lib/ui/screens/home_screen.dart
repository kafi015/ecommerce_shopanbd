import 'package:ecommerce_shopanbd/new/products.dart';
import 'package:ecommerce_shopanbd/ui/screens/product_list_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/signup_login/complete_profile.dart';
import 'package:ecommerce_shopanbd/ui/screens/signup_login/email_verification_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/bottom_nav_bar_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:ecommerce_shopanbd/new/n_product_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home/appbar_icons.dart';
import '../widgets/home/home_carousal_widget.dart';
import '../widgets/home/home_remarks.dart';
import '../widgets/home/search_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset(
          'assets/App_Logo.jpg',
        ),
        title: Row(
          children: [
            const Text(
              'ShopanBD',
              style: TextStyle(
                color: primaryColor,
                fontSize: 24,
              ),
            ),
            const Spacer(),
            AppBarIcons(
              icon: Icons.person,
              onTap: () async {
                await Get.find<AuthController>().isLoggedIn()
                    ? Get.to(const CompleteProfileScreen())
                    : Get.to(const EmailVerificationScreen());
              },
            ),
            const SizedBox(
              width: 10,
            ),
            AppBarIcons(
              icon: Icons.call,
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            AppBarIcons(
              icon: Icons.logout,
              onTap: () async {
                await Get.find<AuthController>().logOut();
              },
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextField(),
              const SizedBox(
                height: 16,
              ),
          HomeCaruosalWidget(
            images: const [
              'assets/home_slider1.png',
              'assets/home_slider2.png',
              'assets/home_slider3.png',
              'assets/home_slider4.png',
            ],
          ),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'All Categories',
                onTap: () {
                  Get.find<BottomNavigationBarController>().changeIndex(1);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CategoryCardWidget(
                            name: 'Electronics',
                            imageUrl: 'assets/electronics_icon.png',
                            id: 1
                        ),
                        CategoryCardWidget(
                            name: 'Food',
                            imageUrl: 'assets/fruits_icon.png',
                            id: 2
                        ),
                        CategoryCardWidget(
                            name: 'Fashion',
                            imageUrl: 'assets/fashion_icon.png',
                            id: 3
                        ),
                        CategoryCardWidget(
                            name: 'Furniture',
                            imageUrl: 'assets/furniture_icon.png',
                            id: 4
                        ),

                      ],
                    ),
                  ),

              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'Popular',
                onTap: () {
                    Get.to(const ProductListScreen(categoryName: 'Popular',));
                },
              ),

              GetBuilder<Products>(builder: (productsController) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(int index =0; index< productsController.products.length ; index++)
                          if(productsController.products[index]['remark'] == 'Popular')
                            NProductCart(
                              //  print(Get.put(Products()).products.first['name']);
                              index:index,
                              productID: productsController.products[index]['id'],
                              title: productsController.products[index]['title'],
                              image: productsController.products[index]['image'],
                              price: productsController.products[index]['price'],
                              rating: productsController.products[index]['rating'],
                              previoutScreen: 'Home',
                            ),
                      ],
                    ),
                  );
                }),

              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'Special',
                onTap: () {
                  Get.to(const ProductListScreen(categoryName: 'Special',));
                },
              ),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<Products>(builder: (productsController) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int index =0; index< productsController.products.length ; index++)
                        if(productsController.products[index]['remark'] == 'Special')
                          NProductCart(
                            //  print(Get.put(Products()).products.first['name']);
                            index:index,
                            productID: productsController.products[index]['id'],
                            title: productsController.products[index]['title'],
                            image: productsController.products[index]['image'],
                            price: productsController.products[index]['price'],
                            rating: productsController.products[index]['rating'],
                            previoutScreen: 'Home',
                          ),
                    ],
                  ),
                );
              }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'New',
                onTap: () {
                  Get.to(const ProductListScreen(categoryName: 'New',));
                },
              ),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<Products>(builder: (productsController) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int index =0; index< productsController.products.length ; index++)
                        if(productsController.products[index]['remark'] == 'New')
                          NProductCart(
                            //  print(Get.put(Products()).products.first['name']);
                            index:index,
                            title: productsController.products[index]['title'],
                            image: productsController.products[index]['image'],
                            price: productsController.products[index]['price'],
                            rating: productsController.products[index]['rating'],
                            previoutScreen: 'Home',
                            productID: productsController.products[index]['id'],
                          ),
                    ],
                  ),
                );
              }),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
