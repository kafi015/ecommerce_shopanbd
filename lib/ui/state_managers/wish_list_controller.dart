import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:get/get.dart';

import '../../data/models/wish_list_model.dart';

class WishListController extends GetxController {
  bool _addNewItemInProgress = false,_getWishListInProgress = false;
  WishListModel _wishListModel = WishListModel();

  bool get getWishListInProgress => _getWishListInProgress;
  bool get addNewItemInProgress => _addNewItemInProgress;
  WishListModel get wishListModel => _wishListModel;






  Future<bool> addWishList(int productId) async {
    _addNewItemInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/CreateWishList/$productId');
    _addNewItemInProgress = false;
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

  Future<bool> getWishlist() async {
    _getWishListInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/ProductWishList');
    _getWishListInProgress = false;
    if (response.isSuccess) {
      _wishListModel = WishListModel.fromJson(response.returnData);
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
