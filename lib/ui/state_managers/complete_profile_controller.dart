import 'package:ecommerce_shopanbd/data/models/home_slider_model.dart';
import 'package:ecommerce_shopanbd/data/models/read_profile_model.dart';
import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class CompleteProfileController extends GetxController {
  bool _getProfileDataInProgress = false;

  ReadProfileModel _readProfileModel = ReadProfileModel();

  bool get getProfileDataInProgress => _getProfileDataInProgress;
  ReadProfileModel get getreadProfileModel => _readProfileModel;
  Future<bool> getProfileData() async {
    _getProfileDataInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/ReadProfile');
    _getProfileDataInProgress = false;
    print(response);
    print('response.isSuccessresponse.isSuccessresponse.isSuccessresponse.isSuccess');
    print(response.isSuccess);
    if (response.isSuccess) {
      _readProfileModel = ReadProfileModel.fromJson(response.returnData);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}