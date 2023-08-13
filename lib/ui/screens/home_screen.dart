import 'package:ecommerce_shopanbd/ui/screens/signup_login/complete_profile.dart';
import 'package:ecommerce_shopanbd/ui/screens/signup_login/email_verification_screen.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/bottom_nav_bar_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/category_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/home_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/product_by_remark_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home/appbar_icons.dart';
import '../widgets/home/home_carousal_widget.dart';
import '../widgets/home/home_remarks.dart';
import '../widgets/home/search_textfield.dart';
import '../widgets/product_card.dart';

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
              icon: Icons.notifications,
              onTap: () {},
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
              GetBuilder<HomeController>(builder: (homeController) {
                if (homeController.getSliderInProgress) {
                  return const SizedBox(
                    height: 200,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ),
                  );
                } else {
                  return HomeCaruosalWidget(
                    homeSliderModel: homeController.getHomeSliderModel,
                  );
                }
              }),
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
              GetBuilder<CategoryController>(builder: (categoryController) {
                if (categoryController.getCategotyInProgress) {
                  return const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: categoryController.getCategoryModel.categories!
                          .map((category) => CategoryCardWidget(
                              name: category.categoryName ?? '',
                              imageUrl: category.categoryImg ?? '',
                              id: category.id ?? 0))
                          .toList(),
                    ),
                  );
                }
              }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'Popular',
                onTap: () {
                  //  Get.to(const ProductListScreen());
                },
              ),
              GetBuilder<ProductByRemarkController>(
                  builder: (popularRemarkController) {
                if (popularRemarkController.getPopularRemarkInProgress) {
                  return const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: popularRemarkController
                          .getPopularRemarkModel.productCategoryData!
                          .map(
                            (product) => ProductCart(
                              product: product,
                            ),
                          )
                          .toList(),
                    ),
                  );
                }
              }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'Special',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<ProductByRemarkController>(
                  builder: (specialRemarkController) {
                if (specialRemarkController.getSpecialRemarkInProgress) {
                  return const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: specialRemarkController
                          .getSpecialRemarkModel.productCategoryData!
                          .map(
                            (product) => ProductCart(
                              product: product,
                            ),
                          )
                          .toList(),
                    ),
                  );
                }
              }),
              const SizedBox(
                height: 16,
              ),
              Remarks(
                title: 'New',
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<ProductByRemarkController>(
                  builder: (newRemarkController) {
                if (newRemarkController.getNewRemarkInProgress) {
                  return const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: newRemarkController
                          .getNewRemarkModel.productCategoryData!
                          .map(
                            (product) => ProductCart(
                              product: product,
                            ),
                          )
                          .toList(),
                    ),
                  );
                }
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
