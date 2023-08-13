import 'package:ecommerce_shopanbd/data/models/popular_remark_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';


class ProductByRemarkController extends GetxController {
  bool _getRemarkInProgress = false;

  PopularRemarkModel _popularRemarkModel = PopularRemarkModel();

  bool get getRemarkInProgress => _getRemarkInProgress;
  PopularRemarkModel get getPopularRemarkModel => _popularRemarkModel;
  Future<bool> getPopularRemarkProducts() async {
    _getRemarkInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/ListProductByRemark/popular');
    _getRemarkInProgress = false;
    if (response.isSuccess) {
      _popularRemarkModel = PopularRemarkModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
