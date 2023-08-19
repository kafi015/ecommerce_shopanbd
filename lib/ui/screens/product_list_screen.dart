import 'package:ecommerce_shopanbd/new/n_product_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../new/products.dart';
import '../widgets/appbar_back_button.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen(
      {Key? key, required this.categoryId, required this.categoryName})
      : super(key: key);
  final int categoryId;
  final String categoryName;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  int noOfProduct = 0;
  List<dynamic> categoryWiseProducts = [];

  void calculateOnOfProduct() {
    for (int i = 0; i < Get.find<Products>().products.length; i++) {
      if (Get.find<Products>().products[i]['category'] == widget.categoryName)
        {
          ++noOfProduct;
          categoryWiseProducts.add(Get.find<Products>().products[i]);
        }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculateOnOfProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: Text(widget.categoryName),
      ),
      body: GetBuilder<Products>(builder: (productController) {

        return Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: noOfProduct,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5, crossAxisCount: 3, childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                    return NProductCart(
                      productID: categoryWiseProducts[index]['id'],
                        image: categoryWiseProducts[index]['image'],
                        title: categoryWiseProducts[index]['title'],
                        price: categoryWiseProducts[index]['price'],
                        rating: categoryWiseProducts[index]['rating'],
                        index: index, previoutScreen: widget.categoryName,
                    );

                // return  ProductCart(product: ,);
              }),
        );
      }),
    );
  }
}
