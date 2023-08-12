import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/profile_models.dart';

class AuthController extends GetxController {
  static String? _token;
  static ProfileData? _profileData;

  static String? get token => _token;

  static ProfileData? get profileData => _profileData;

  Future<bool> isLoggedIn() async {
    await getToken();
    await getProfileData();
    return _token != null;
  }

  Future<void> saveToken(String userToken) async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    _token = userToken;
    await _preference.setString('token', userToken);
  }

  Future<void> getToken() async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    _token = _preference.getString('token');
  }

  Future<void> saveProfileData(ProfileData profile) async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    _profileData = profile;
    await _preference.setString('user_profile', profile.toJson().toString());
  }

  Future<void> getProfileData() async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    _profileData = ProfileData.fromJson(
        jsonDecode(_preference.getString('user_profile') ?? '{}'));
  }

  Future<void> clearUserData() async {
    SharedPreferences _preference = await SharedPreferences.getInstance();
    await _preference.clear();
  }
}
