import 'package:ecommerce_shopanbd/ui/state_managers/category_controller.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
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
      body: RefreshIndicator(
        color: primaryColor,
        onRefresh: ()async{
          await Get.find<CategoryController>().getCategories();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
          child: GetBuilder<CategoryController>(builder: (categoryController) {
            if (categoryController.getCategotyInProgress) {
              return const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              );
            } else {
              return Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: GridView.builder(
                          itemCount:
                              categoryController.getCategoryModel.categories!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, category) {
                            return CategoryCardWidget(
                                name: categoryController.getCategoryModel
                                        .categories![category].categoryName ??
                                    '',
                                imageUrl: categoryController.getCategoryModel
                                        .categories![category].categoryImg ??
                                    '',
                                id: categoryController
                                        .getCategoryModel.categories![category].id ??
                                    0);
                          })),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 2,
                      child: GridView.builder(
                          itemCount:
                              categoryController.getCategoryModel.categories!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, category) {
                            return CategoryCardWidget(
                                name: categoryController.getCategoryModel
                                        .categories![category].categoryName ??
                                    '',
                                imageUrl: categoryController.getCategoryModel
                                        .categories![category].categoryImg ??
                                    '',
                                id: categoryController
                                        .getCategoryModel.categories![category].id ??
                                    0);
                          })),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 2,
                      child: GridView.builder(
                          itemCount:
                              categoryController.getCategoryModel.categories!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, category) {
                            return CategoryCardWidget(
                                name: categoryController.getCategoryModel
                                        .categories![category].categoryName ??
                                    '',
                                imageUrl: categoryController.getCategoryModel
                                        .categories![category].categoryImg ??
                                    '',
                                id: categoryController
                                        .getCategoryModel.categories![category].id ??
                                    0);
                          })),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 2,
                      child: GridView.builder(
                          itemCount:
                              categoryController.getCategoryModel.categories!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, category) {
                            return CategoryCardWidget(
                                name: categoryController.getCategoryModel
                                        .categories![category].categoryName ??
                                    '',
                                imageUrl: categoryController.getCategoryModel
                                        .categories![category].categoryImg ??
                                    '',
                                id: categoryController
                                        .getCategoryModel.categories![category].id ??
                                    0);
                          })),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(flex: 2, child: Text(''))
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
