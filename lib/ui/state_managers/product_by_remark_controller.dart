import 'package:ecommerce_shopanbd/data/models/product_remark_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class ProductByRemarkController extends GetxController {
  //here is a problem if call popular update() whole class was rebuild.
  //so we have to write three remark class for better performance

  bool _popularRemarkInProgress = false;
  bool _specialRemarkInProgress = false;
  bool _newRemarkInProgress = false;
  ProductRemarkModel _popularRemarkModel = ProductRemarkModel();
  ProductRemarkModel _specialRemarkModel = ProductRemarkModel();
  ProductRemarkModel _newRemarkModel = ProductRemarkModel();

  bool get getPopularRemarkInProgress => _popularRemarkInProgress;

  bool get getSpecialRemarkInProgress => _specialRemarkInProgress;

  bool get getNewRemarkInProgress => _newRemarkInProgress;

  ProductRemarkModel get getPopularRemarkModel => _popularRemarkModel;

  ProductRemarkModel get getSpecialRemarkModel => _specialRemarkModel;

  ProductRemarkModel get getNewRemarkModel => _newRemarkModel;

  Future<bool> getPopularRemarkProducts() async {
    _popularRemarkInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/ListProductByRemark/popular');
    _popularRemarkInProgress = false;
    if (response.isSuccess) {
      _popularRemarkModel = ProductRemarkModel.fromJson(response.returnData);
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
      _specialRemarkModel = ProductRemarkModel.fromJson(response.returnData);
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
      _newRemarkModel = ProductRemarkModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
