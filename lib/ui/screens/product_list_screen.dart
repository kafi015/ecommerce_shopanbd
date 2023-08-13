import 'package:flutter/material.dart';

import '../widgets/appbar_back_button.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButtton(),
        title: const Text('Products'),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5,
            crossAxisCount: 3,
            childAspectRatio: 0.75
          ),
          itemBuilder: (context, index) {
            return null;

           // return  ProductCart(product: ,);
          }),
    );
  }
}


