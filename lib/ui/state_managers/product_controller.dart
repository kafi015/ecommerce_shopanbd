import 'package:ecommerce_shopanbd/data/models/product_by_category_model.dart';
import 'package:ecommerce_shopanbd/data/models/product_details_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  bool _getProductByCategoryInProgress = false;
  bool _getProductByIDInProgress = false;
  ProductByCategoryModel _productByCategoryModel = ProductByCategoryModel();
  ProductDetailsModel _productDetailsModel = ProductDetailsModel();

  bool get getProductByCategoryInProgress => _getProductByCategoryInProgress;

  bool get getProductByIDInProgress => _getProductByIDInProgress;

  ProductByCategoryModel get getProductByCategoryModel =>
      _productByCategoryModel;

  ProductDetailsModel get getproductDetailsModel => _productDetailsModel;

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

  Future<bool> getProductByID(String id) async {
    _getProductByIDInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/ProductDetailsById/$id');
    _getProductByIDInProgress = false;
    if (response.isSuccess) {
      _productDetailsModel =
          ProductDetailsModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
