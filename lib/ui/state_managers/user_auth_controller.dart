import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class UserAuthController extends GetxController {
  bool _emailVarificationInProgress = false;
  bool _otpVarificationInProgress = false;

  bool get emailVarificationInProgress => _emailVarificationInProgress;
  bool get otpVarificationInProgress => _otpVarificationInProgress;

  Future<bool> emailVarification(String email) async {
    _emailVarificationInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/UserLogin/$email');
    _emailVarificationInProgress = false;
    update();
    if (response.isSuccess) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> otpVarification(String email, String otp) async {
    _otpVarificationInProgress = true;
    update();
    final response =
        await NetworkCaller.getRequest(url: '/VerifyLogin/$email/$otp');
    _otpVarificationInProgress = false;

    if (response.isSuccess) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}
