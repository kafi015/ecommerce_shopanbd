import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  String? token;

  Future<bool> isLoggedIn()
  async {
    await getToken();
    return token !=null;
  }

  Future<void> saveToken(String userToken) async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    token = userToken;
    await _preference.setString('token', userToken);
  }

  Future<void> getToken() async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    token = _preference.getString('token');
  }

  Future<void> clearUserData() async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    await _preference.clear();
  }
}
