import 'package:ecommerce_shopanbd/new/n_products_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/utils/app_colors.dart';

class NProductCart extends StatelessWidget {
  const NProductCart({
    super.key, required this.image, required this.title, required this.price, required this.rating, required this.index, required this.previoutScreen, required this.productID,
  });

  final String previoutScreen;
  final int index;
  final int productID;
  final String image;
  final String title;
  final String price;
  final String rating;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: InkWell(
        onTap: () {
          Get.to(NProductDetailsScreen(productID: productID, previousScreen: previoutScreen, index: index,));
        },
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          shape: RoundedRectangleBorder(
              //side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0)),
          shadowColor: primaryColor.withOpacity(0.3),
          elevation: 3,
          color: primaryColor.withOpacity(0.1),
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                 // border: Border.all(color: Colors.black),
                  image: DecorationImage(
                    image: AssetImage(
                      image,

                    ),
                  )
                ),
              ),
              const Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.3,
                        height: 1.3,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          '৳$price',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.amber,
                            ),
                            Text(
                              rating,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: greyColor.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
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
                              size: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}