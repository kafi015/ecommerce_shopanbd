import 'package:ecommerce_shopanbd/ui/widgets/product_details/category_card_widget.dart';
import 'package:flutter/material.dart';

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
      body: GridView.builder(
        itemCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index)
          {
            return const CategoryCardWidget(name: 'name', imageUrl: '', id: 1);
          }
      ),
    );
  }
}


