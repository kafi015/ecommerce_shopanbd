import 'package:ecommerce_shopanbd/ui/state_managers/category_controller.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appbar_back_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BottomNavAppBarBackButton(),
        title: const Text('Categories'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
        child: GetBuilder<CategoryController>(builder: (categoryController) {
          return  const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryCardWidget(
                      name: 'Electronics',
                      imageUrl: 'assets/electronics_icon.png',
                      id: 1),
                  CategoryCardWidget(
                      name: 'Food', imageUrl: 'assets/fruits_icon.png', id: 2),
                  CategoryCardWidget(
                      name: 'Fashion',
                      imageUrl: 'assets/fashion_icon.png',
                      id: 3),
                  CategoryCardWidget(
                      name: 'Furniture',
                      imageUrl: 'assets/furniture_icon.png',
                      id: 4),

                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
