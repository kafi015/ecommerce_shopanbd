import 'package:ecommerce_shopanbd/data/models/product_by_category_model.dart';
import 'package:ecommerce_shopanbd/data/models/product_details_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:ecommerce_shopanbd/ui/utils/snakbar_message.dart';
import 'package:get/get.dart';

class WishListController extends GetxController {
  bool _getWishListInProgress = false;

  bool get getWishListInProgress => _getWishListInProgress;

  Future<bool> addWishList(int productId) async {
    _getWishListInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/CreateWishList/$productId');
    _getWishListInProgress = false;
    if (response.isSuccess) {

      update();
      return true;
    } else {
      if (response.statusCode == 401) {
        Get.find<AuthController>().logOut();
      }
      update();
      return false;
    }
  }
}
