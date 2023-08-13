import 'package:ecommerce_shopanbd/ui/state_managers/category_controller.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

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
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child:
                  GetBuilder<CategoryController>(builder: (categoryController) {
                return GridView.builder(
                    itemCount:
                        categoryController.categoryModel.categories!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, category) {
                      return CategoryCardWidget(
                          name: categoryController.categoryModel
                                  .categories![category].categoryName ??
                              '',
                          imageUrl: categoryController.categoryModel
                                  .categories![category].categoryImg ??
                              '',
                          id: categoryController
                                  .categoryModel.categories![category].id ??
                              0);
                    });
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child:
                  GetBuilder<CategoryController>(builder: (categoryController) {
                return GridView.builder(
                    itemCount:
                        categoryController.categoryModel.categories!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, category) {
                      return CategoryCardWidget(
                          name: categoryController.categoryModel
                                  .categories![category].categoryName ??
                              '',
                          imageUrl: categoryController.categoryModel
                                  .categories![category].categoryImg ??
                              '',
                          id: categoryController
                                  .categoryModel.categories![category].id ??
                              0);
                    });
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child:
                  GetBuilder<CategoryController>(builder: (categoryController) {
                return GridView.builder(
                    itemCount:
                        categoryController.categoryModel.categories!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, category) {
                      return CategoryCardWidget(
                          name: categoryController.categoryModel
                                  .categories![category].categoryName ??
                              '',
                          imageUrl: categoryController.categoryModel
                                  .categories![category].categoryImg ??
                              '',
                          id: categoryController
                                  .categoryModel.categories![category].id ??
                              0);
                    });
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child:
                  GetBuilder<CategoryController>(builder: (categoryController) {
                return GridView.builder(
                    itemCount:
                        categoryController.categoryModel.categories!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, category) {
                      return CategoryCardWidget(
                          name: categoryController.categoryModel
                                  .categories![category].categoryName ??
                              '',
                          imageUrl: categoryController.categoryModel
                                  .categories![category].categoryImg ??
                              '',
                          id: categoryController
                                  .categoryModel.categories![category].id ??
                              0);
                    });
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(flex: 2, child: Text(''))
          ],
        ),
      ),
    );
  }
}
