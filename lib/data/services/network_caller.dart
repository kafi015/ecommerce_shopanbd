import 'dart:convert';
import 'dart:developer';
import 'package:ecommerce_shopanbd/data/models/response_model.dart';
import 'package:ecommerce_shopanbd/ui/state_managers/bottom_nav_bar_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../ui/state_managers/auth_controller.dart';
import '../utils/urls.dart';

class NetworkCaller {
  NetworkCaller._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
      log(Urls.baseUrl + url);

      final http.Response response =
          await http.get(Uri.parse(Urls.baseUrl + url), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'token': AuthController.token.toString(),
      });
      log(response.body);
      if (response.statusCode == 200) {
        return ResponseModel(
            isSuccess: true,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      } else if(response.statusCode == 401){
        return ResponseModel(
            isSuccess: false,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      }
      else {
        return ResponseModel(
            isSuccess: false,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      }
    } catch (_) {
      log('Error in Catch Block!');
      log(_ as String);
      return ResponseModel(
        isSuccess: false,
        statusCode: -1,
        returnData: _.toString(),
      );
    }
  }

  void moveToHome()
  {
    Get.find<BottomNavigationBarController>().backToHome();
  }
}
