import 'package:ecommerce_shopanbd/data/services/network_caller.dart';
import 'package:get/get.dart';

class UserAuthController extends GetxController {
  bool _emailVarificationInProgress = false;

  bool get emailVarificationInProgress => _emailVarificationInProgress;

  Future<bool> emailVarification(String email) async {
    _emailVarificationInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/UserLogin/$email');
    _emailVarificationInProgress = false;
    update();
    if(response.isSuccess)
      {
        return true;
      }
    else
      {
        return false;
      }
  }
}
