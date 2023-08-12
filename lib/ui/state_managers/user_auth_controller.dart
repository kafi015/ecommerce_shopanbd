import 'dart:async';
import 'dart:developer';

import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/auth_controller.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/user_profile_controller.dart';
import 'package:get/get.dart';

class UserAuthController extends GetxController {
  bool _emailVarificationInProgress = false;
  bool _otpVarificationInProgress = false;
  late Timer _timer;
  int _start = 120;

  bool get emailVarificationInProgress => _emailVarificationInProgress;

  bool get otpVarificationInProgress => _otpVarificationInProgress;

  int get getStartCountDown => _start;

  Future<bool> emailVarification(String email) async {
    _emailVarificationInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/UserLogin/$email');
    _emailVarificationInProgress = false;
    update();
    if (response.isSuccess) {
      startTimer();
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
      log('token token token token tokne token');
      log(response.returnData['data']);
      await Get.find<AuthController>().saveToken(response.returnData['data']);
      Get.find<UserProfileController>().getProfileData();
      _timer.cancel();
      return true;
    } else {
      update();
      return false;
    }
  }

  Future<bool> checkReadProfile(String email, String otp) async {
    _otpVarificationInProgress = true;
    update();
    final response =
    await NetworkCaller.getRequest(url: '/VerifyLogin/$email/$otp');
    _otpVarificationInProgress = false;

    if (response.isSuccess) {
      _timer.cancel();
      update();
      return true;
    } else {
      update();
      return false;
    }
  }


  void startTimer() {
    _start = 120;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          timer.cancel();
          update();
        } else {
          _start--;
          update();
        }
      },
    );
  }
}
