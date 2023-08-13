import 'package:ecommerce_shopanbd/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_managers/product_controller.dart';
import '../utils/app_colors.dart';
import '../widgets/appbar_back_button.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key,required this.categoryId}) : super(key: key);
  final int categoryId;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<ProductController>().getProductByCategory(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: const Text('Products'),
      ),
      body: GetBuilder<ProductController>(builder: (productController) {
        if (productController.getProductByCategoryInProgress) {
          return const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          );
        } else {
          return GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: productController
                  .getProductByCategoryModel.productCategoryData!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                return ProductCart(
                    product: productController
                        .getProductByCategoryModel.productCategoryData![index]);

                // return  ProductCart(product: ,);
              });
        }
      }),
    );
  }
}
