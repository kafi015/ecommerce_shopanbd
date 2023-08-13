import 'package:ecommerce_shopanbd/data/models/product_by_category_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  bool _getProductByCategoryInProgress = false;
  ProductByCategoryModel _productByCategoryModel = ProductByCategoryModel();

  bool get getProductByCategoryInProgress => _getProductByCategoryInProgress;

  ProductByCategoryModel get getProductByCategoryModel =>
      _productByCategoryModel;

  Future<bool> getProductByCategory(int id) async {
    _getProductByCategoryInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/ListProductByCategory/$id');
    _getProductByCategoryInProgress = false;
    if (response.isSuccess) {
      _productByCategoryModel =
          ProductByCategoryModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
