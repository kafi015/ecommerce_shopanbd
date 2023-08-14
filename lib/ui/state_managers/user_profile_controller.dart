import 'package:ecommerce_shopanbd/data/models/profile_models.dart';
import 'package:ecommerce_shopanbd/ui/screens/signup_login/complete_profile.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:get/get.dart';

import '../../data/services/network_caller.dart';

class UserProfileController extends GetxController {
  bool _getProfileDataInProgress = false;
  bool get getProfileDataInProgress => _getProfileDataInProgress;

  Future<bool> readProfile() async {
    _getProfileDataInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/ReadProfile');
    _getProfileDataInProgress = false;
    update();
    if (response.isSuccess) {
      final ProfileModel  profileModel = ProfileModel.fromJson(response.returnData);

      if(profileModel.profileData != null)
        {
          Get.find<AuthController>().saveProfileData(profileModel.profileData!.first);
        }
      else
        {
          Get.to(const CompleteProfileScreen());
        }

       return true;
    } else {
      return false;
    }
  }

}
