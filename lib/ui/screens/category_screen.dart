import 'package:ecommerce_shopanbd/ui/state_managers/bottom_nav_bar_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryScreen extends StatelessWidget {
   const CategoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.find<BottomNavigationBarController>().backToHome();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: greyColor,
          ),
        ),
        title: Text('Categories'),
      ),
      body: GridView.builder(
        itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index)
          {
            return CategoryCardWidget(name: 'name', imageUrl: Icons.laptop, id: 1);
          }
      ),
    );
  }
}
