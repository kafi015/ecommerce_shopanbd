import 'dart:convert';
import 'dart:developer';
import 'package:ecommerce_shopanbd/data/models/response_model.dart';
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
      }
      // else if (response.statusCode == 401) {
      //   Get.find<AuthController>().logOut();
      //   return ResponseModel(
      //       isSuccess: false,
      //       statusCode: response.statusCode,
      //       returnData: jsonDecode(response.body));
      // }
      else {
        return ResponseModel(
            isSuccess: false,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      }
    } catch (_) {
      log('Error in Catch Block!');
      //log(_ as String);
      return ResponseModel(
        isSuccess: false,
        statusCode: -1,
        returnData: _.toString(),
      );
    }
  }

  static Future<ResponseModel> postRequest(
      {required String url, Map<String, dynamic>? body}) async {
    try {
      log('Url');
      log(Urls.baseUrl + url);
      log(AuthController.token.toString());
      log('token tken');
      log(body.toString());
      log('body bbody body');
      final http.Response response =
          await http.post(Uri.parse(Urls.baseUrl + url),
              headers: {
                'Content-type': 'application/json',
                'Accept': 'application/json',
                'token': AuthController.token.toString(),
              },
              body: json.encode(body));
      // log(response.body);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        return ResponseModel(
            isSuccess: true,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      } else if (response.statusCode == 500 || response.statusCode == 401) {
        Get.find<AuthController>().logOut();
        return ResponseModel(
            isSuccess: false,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      } else {
        return ResponseModel(
            isSuccess: false,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body));
      }
    } catch (e) {
      log('Error in Catch Block!!!');
      log(e.toString());
      return ResponseModel(
          isSuccess: false, statusCode: -1, returnData: e.toString());
    }
  }

// void moveToHome()
// {
//   Get.find<BottomNavigationBarController>().backToHome();
// }
}
