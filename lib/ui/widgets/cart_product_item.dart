import 'package:ecommerce_shopanbd/new/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class CartProductItem extends StatefulWidget {
  const CartProductItem(
      {Key? key,
      required this.title,
      required this.price,
      required this.image,
      required this.index,
      required this.id})
      : super(key: key);

  final int index;
  final int id;
  final String title;
  final String price;
  final String image;

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(width: 120, child: Image.asset(widget.image)),

            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   widget.cartData.product?.title ?? 'Unknown',
                            //   style: const TextStyle(
                            //       fontSize: 16,
                            //       fontWeight: FontWeight.w500,
                            //       color: greyColor),
                            // ),
                            Text(
                              widget.title,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Size: X',
                                  style: TextStyle(color: greyColor),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Color: Red',
                                  style: TextStyle(color: greyColor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.find<Products>().carts.removeAt(widget.index);
                          Get.find<Products>().cartQuantity[widget.index] = Get.find<Products>().cartQuantity[widget.index+1];
                          Get.find<Products>().calculateTotalPrice();
                          Get.find<Products>().updateProducts();
                        },
                        icon: const Icon(
                          Icons.delete_forever_outlined,
                          color: softGreyColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   '\$${widget.cartData.product?.price ?? '0.0'}',
                      //   style: const TextStyle(
                      //       fontWeight: FontWeight.w600,
                      //       color: primaryColor,
                      //       fontSize: 16),
                      // ),
                      Text(
                        '৳${widget.price}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                            fontSize: 16),
                      ),
                      const SizedBox(width: 80,),
                      Expanded(
                        flex: 30,
                        child: Row(
                          children: [
                            InkWell(
                              child: const Card(
                                color: primaryColor,
                                margin: EdgeInsets.zero,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                Get.find<Products>()
                                    .subCartQ(widget.index);
                                Get.find<Products>().calculateTotalPrice();
                              },
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 40,
                              child: GetBuilder<Products>(
                                builder: (controller) => Card(
                                  color: softGreyColor.withOpacity(0.2),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      controller.cartQuantity[widget.index] < 10
                                          ? '0${controller.cartQuantity[widget.index].toInt()}'
                                          : controller.cartQuantity[widget.index].toInt()
                                              .toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              child: const Card(
                                color: primaryColor,
                                margin: EdgeInsets.zero,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                Get.find<Products>()
                                    .addCartQ(widget.index);
                                Get.find<Products>().calculateTotalPrice();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
