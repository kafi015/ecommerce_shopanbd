import 'package:get/get.dart';

class CartController extends GetxController
{
  int noOfProduct = 1;

  int get noOfProductGet => noOfProduct;

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
}