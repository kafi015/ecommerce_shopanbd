import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

import '../../data/models/category_model.dart';

class CategoryController extends GetxController {
  bool _getCategotyInProgress = false;

  CategoryModel _categoryModel = CategoryModel();

  bool get getCategotyInProgress => _getCategotyInProgress;
  CategoryModel get categoryModel =>  _categoryModel;
  Future<bool> getCategories() async {
    _getCategotyInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/CategoryList');
    _getCategotyInProgress = false;
    if (response.isSuccess) {
      _categoryModel = CategoryModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
