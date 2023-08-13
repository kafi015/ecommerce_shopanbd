import 'package:flutter/material.dart';

import '../widgets/appbar_back_button.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

           // return ProductCart(title: '',imageUrl: '',price: '',rating: '',);
          }),
      appBar: AppBar(
        leading: const BottomNavAppBarBackButton(),
        title: const Text('Wish List'),
      ),
    );
  }
}
