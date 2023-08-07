import 'package:ecommerce_shopanbd/ui/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';


class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);

  final String name;
  final IconData imageUrl;
  final int id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(CategoryScreen(
       //   categoryId: id,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(imageUrl,color: primaryColor,),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: primaryColor,
                letterSpacing: 0.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
