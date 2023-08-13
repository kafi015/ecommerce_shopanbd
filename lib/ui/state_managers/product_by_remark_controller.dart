import 'package:ecommerce_shopanbd/data/models/product_by_category_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class ProductByRemarkController extends GetxController {
  //here is a problem if call popular update() whole class was rebuild.
  //so we have to write three remark class for better performance

  bool _popularRemarkInProgress = false;
  bool _specialRemarkInProgress = false;
  bool _newRemarkInProgress = false;
  ProductByCategoryModel _popularRemarkModel = ProductByCategoryModel();
  ProductByCategoryModel _specialRemarkModel = ProductByCategoryModel();
  ProductByCategoryModel _newRemarkModel = ProductByCategoryModel();

  bool get getPopularRemarkInProgress => _popularRemarkInProgress;

  bool get getSpecialRemarkInProgress => _specialRemarkInProgress;

  bool get getNewRemarkInProgress => _newRemarkInProgress;

  ProductByCategoryModel get getPopularRemarkModel => _popularRemarkModel;

  ProductByCategoryModel get getSpecialRemarkModel => _specialRemarkModel;

  ProductByCategoryModel get getNewRemarkModel => _newRemarkModel;

  Future<bool> getPopularRemarkProducts() async {
    _popularRemarkInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/ListProductByRemark/popular');
    _popularRemarkInProgress = false;
    if (response.isSuccess) {
      _popularRemarkModel = ProductByCategoryModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  Future<bool> getSpecialRemarkProducts() async {
    _specialRemarkInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/ListProductByRemark/special');
    _specialRemarkInProgress = false;
    if (response.isSuccess) {
      _specialRemarkModel = ProductByCategoryModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

  Future<bool> getNewRemarkProducts() async {
    _newRemarkInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/ListProductByRemark/new');
    _newRemarkInProgress = false;
    if (response.isSuccess) {
      _newRemarkModel = ProductByCategoryModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
