import 'package:ecommerce_shopanbd/ui/screens/cart_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/category_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/home_screen.dart';
import 'package:ecommerce_shopanbd/ui/screens/wish_list_screen.dart';
import 'package:ecommerce_shopanbd/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';


class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  final List<Widget> screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishListScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4,
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black38,
        selectedFontSize: 14,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        onTap: (index) {
          currentIndex = index;
          if(mounted)
            {
              setState(() {});
            }
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp), label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Wish List"),
        ],
      ),
      body: screens[currentIndex],

    );
  }
}
