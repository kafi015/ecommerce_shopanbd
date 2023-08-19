import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductItemController extends GetxController
{
  int noOfProduct = 1;
  Color productColor = Colors.white;
  late String productSize;
  List<int> cartQuantity = [];


  int get getNoOfProduct => noOfProduct;
  Color get getProductColor => productColor;
  String get getProductSize => productSize;
  List<int> get getcartQuantity => cartQuantity;


  void addCartNumber(int cartIndex)
  {
   // cartQuantity[cartIndex] = noOfProduct;
    cartQuantity.add(noOfProduct);
      if(noOfProduct<10)
        {
          noOfProduct += 1;
         // cartQuantity[cartIndex]= noOfProduct;
          update();
        }
  }
  void decreaseCartNumber(int cartIndex)
  {
   // cartQuantity[cartIndex] = noOfProduct;
      if(noOfProduct>1)
        {
          noOfProduct -= 1;
       //   cartQuantity[cartIndex] -= 1;
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