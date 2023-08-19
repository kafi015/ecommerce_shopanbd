import 'package:ecommerce_shopanbd/new/products.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:ecommerce_shopanbd/ui/utils/text_style.dart';
import 'package:ecommerce_shopanbd/ui/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_managers/cart_controller.dart';
import 'create_review_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: const Text('Review'),
      ),
      body: GetBuilder<Products>(
        builder: (productController) {
          //productController.update();
          return Column(
            children: [

              Expanded(
                  child: ListView.builder(
                itemCount: productController.products[widget.index]['review'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
                    child: Card(
                      color: primaryColor.withOpacity(0.3),
                      shadowColor: primaryColor,
                      child: ListTile(
                        title: Row(
                          children: [
                            const Icon(Icons.person),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(productController.products[widget.index]['review'][index]['name'],
                                style: const TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                              productController.products[widget.index]['review'][index]['text'],
                              style: const TextStyle(fontSize: 14)),
                        ),
                      ),
                    ),
                  );
                },
              )),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    )),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Review ( ${productController.products[widget.index]['review'].length} )',
                            style: titleTextStyle.copyWith(color: softGreyColor.withOpacity(0.8)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(

                      child: GetBuilder<CartController>(

                          builder: (cartController) {
                            if (cartController.addToCartInProgress) {
                              return const Center(
                                child: CircularProgressIndicator(color: primaryColor,),
                              );
                            }
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                                )
                              ),
                                onPressed: () async {
                                  Get.to( CreateReviewScreen(index: widget.index,));

                                },
                                child: const Icon(Icons.add));
                          }
                      ),
                    ),
                  ],
                ),
              ),

            ],
          );
        }
      ),
    );
  }
}
