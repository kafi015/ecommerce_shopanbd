import 'package:ecommerce_shopanbd/ui/state_managers/cart_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/product_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/text_style.dart';
import 'package:ecommerce_shopanbd/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce_shopanbd/ui/widgets/product_details/product_image_carousal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key, required this.productId})
      : super(key: key);

  final String productId;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<ProductController>().getProductByID(widget.productId);
  }

  List<Color> _colors = [];

  List<String> _sizes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: const Text('Product Details'),
      ),
      body: GetBuilder<ProductController>(builder: (productController) {
        if (productController.getProductByIDInProgress) {
          return const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          );
        } else {
          final productDetails = productController
              .getproductDetailsModel.productDetailsData!.first;
          _sizes = getSizes(productDetails.size ?? '');
          _colors = getColors(productDetails.color ?? '');
          Get.find<CartController>().setProductSize(_sizes.first);
          Get.find<CartController>().setProductColor(_colors.first);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProductImageCarusal(
                        images: [
                          productDetails.img1 ?? '',
                          productDetails.img2 ?? '',
                          productDetails.img3 ?? '',
                          productDetails.img4 ?? '',
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 70,
                                  child: Text(
                                    productDetails.product!.title ?? 'Unknown',
                                    style: titleTextStyle.copyWith(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
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
                                          Get.find<CartController>()
                                              .decreaseCartNumber();
                                        },
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: GetBuilder<CartController>(
                                          builder: (controller) => Card(
                                            color:
                                                softGreyColor.withOpacity(0.2),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                controller.getNoOfProduct < 10
                                                    ? '0${controller.getNoOfProduct}'
                                                    : controller.getNoOfProduct
                                                        .toString(),
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                          Get.find<CartController>()
                                              .addCartNumber();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      productDetails.product!.star.toString(),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: greyColor.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Reviews',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Colors',
                              style: subTitleTextStyle.copyWith(fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < _colors.length; i++)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(20.0),
                                      onTap: () {
                                        Get.find<CartController>()
                                            .setProductColor(_colors[i]);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: _colors[i],
                                        radius: 15,
                                        child: GetBuilder<CartController>(
                                          builder: (controller) => Visibility(
                                              visible:
                                                  Get.find<CartController>()
                                                          .getProductColor ==
                                                      _colors[i],
                                              child: const Icon(
                                                Icons.check,
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Size',
                              style: subTitleTextStyle.copyWith(fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < _sizes.length; i++)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(20.0),
                                      onTap: () {
                                        Get.find<CartController>()
                                            .setProductSize(_sizes[i]);
                                      },
                                      child: GetBuilder<CartController>(
                                        builder: (controller) => CircleAvatar(
                                          radius: 17,
                                          backgroundColor: softGreyColor,
                                          child: CircleAvatar(
                                            backgroundColor:
                                                controller.getProductSize ==
                                                        _sizes[i]
                                                    ? primaryColor
                                                    : Colors.white,
                                            radius: 15,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                _sizes[i],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: controller
                                                                .getProductSize ==
                                                            _sizes[i]
                                                        ? Colors.white
                                                        : primaryColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Description',
                              style: titleTextStyle.copyWith(
                                  color: Colors.grey.shade700),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              productDetails.product!.shortDes ?? 'Unknown',
                              style: const TextStyle(color: softGreyColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                            'Price',
                            style: subTitleTextStyle.copyWith(
                                color: Colors.grey.shade700),
                          ),
                          Text('\$${productDetails.product!.price}',
                              style: subTitleTextStyle.copyWith(
                                  color: primaryColor, fontSize: 20)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Add to Cart')),
                  ],
                ),
              ),
            ],
          );
        }
      }),
    );
  }

  List<String> getSizes(String size) {
    return size.split(',');
  }

  List<Color> getColors(String color) {
    List<Color> hexColors = [];
    List<String> colors = color.split(',');
    for (String c in colors) {
      c = c.replaceAll('#', '0xFF');
      hexColors.add(Color(int.parse(c)));
    }
    return hexColors;
  }

  // String _getHexCode(Color color) {
  //   return color
  //       .toString()
  //       .replaceAll('0xff', '#')
  //       .replaceAll('Color(', '')
  //       .replaceAll(')', '');
  // }
}
