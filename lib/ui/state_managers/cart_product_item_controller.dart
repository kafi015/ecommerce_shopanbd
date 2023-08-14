import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductItemController extends GetxController
{
  int noOfProduct = 1;
  Color productColor = Colors.white;
  late String productSize;

  int get getNoOfProduct => noOfProduct;
  Color get getProductColor => productColor;
  String get getProductSize => productSize;


  void addCartNumber()
  {
      if(noOfProduct<10)
        {
          noOfProduct += 1;
          update();
        }
  }
  void decreaseCartNumber()
  {
      if(noOfProduct>1)
        {
          noOfProduct -= 1;
          update();
        }
  }
  void setProductColor(Color c)
  {
    productColor = c;
    update();
  }
  void setProductSize(String s)
  {
    productSize = s;
    update();
  }
}