import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fs_bank/features/auth/domain/models/user_model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../localization/language_manager.dart';
import '../themes/theme_manager.dart';
import 'keys_preferences.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage flutterSecureStorage;

  AppPreferences(this._sharedPreferences, this.flutterSecureStorage);

  //Secure Key
  String PREFS_KEY_EMAIL = 'PREFS_KEY_EMAIL';
  String PREFS_KEY_PASSWORD = 'PREFS_KEY_PASSWORD';

  /// Save a single object
  Future<void> saveObject<T>(String key, T object) async {
    String jsonString = jsonEncode(object);
    await _sharedPreferences.setString(key, jsonString);
  }

  /// Retrieve a single object
  Future<T?> getObject<T>(
      String key, T Function(Map<String, dynamic>) fromJson) async {
    String? jsonString = _sharedPreferences.getString(key);
    if (jsonString == null) return null;
    return fromJson(jsonDecode(jsonString));
  }

  /// Save a list of objects
  Future<void> saveList<T>(String key, List<Map<String, dynamic>> list) async {
    List<String> jsonList = list.map((item) => jsonEncode(item)).toList();
    await _sharedPreferences.setStringList(key, jsonList);
  }

  /// Retrieve a list of objects
  List<T> getList<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    List<String>? jsonList = _sharedPreferences.getStringList(key);
    if (jsonList == null) return [];
    return jsonList.map((item) => fromJson(jsonDecode(item))).toList();
  }

  Future<String> getAppLanguage() async {
    String? language =
        _sharedPreferences.getString(KeysPreferences.PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setAppLanguage({required String lang}) async {
    String currentLanguage = await getAppLanguage();
    if (lang == currentLanguage) {
    } else {
      _sharedPreferences.setString(KeysPreferences.PREFS_KEY_LANG, lang);
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(KeysPreferences.PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(KeysPreferences.PREFS_KEY_TOKEN) ?? '';
  }

  bool isLoggedIn() {
    String? token =
        _sharedPreferences.getString(KeysPreferences.PREFS_KEY_TOKEN);
    if (token?.isNotEmpty ?? false) {
      return true;
    } else {
      return false;
    }
  }

  ThemeData getTheme() {
    String? theme =
        _sharedPreferences.getString(KeysPreferences.PREFS_KEY_THEME);
    if (theme == ThemeDataType.dark.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  setTheme({required ThemeData themeData}) {
    _sharedPreferences.setString(
        KeysPreferences.PREFS_KEY_THEME, themeData.getValue());
  }

//-------------User info----------------------
  Future<void> setUserInfo(UserModel user) async {
    await _sharedPreferences.setString(
        KeysPreferences.PREFS_KEY_USER_INFO, json.encode(user.toJson()));
  }

  UserModel? getUserInfo() {
    String userInfoCached =
        _sharedPreferences.getString(KeysPreferences.PREFS_KEY_USER_INFO) ?? "";
    if (userInfoCached.isNotEmpty) {
      Map<String, dynamic> decodeUser =
          json.decode(userInfoCached) as Map<String, dynamic>;
      UserModel model = UserModel.fromJson(decodeUser);
      return model;
    } else {
      return null;
    }
  }

//--------------------------------------------------Secure Storage-----------------------------------------------------

  Future<void> setEmailSecure(String email) async {
    flutterSecureStorage.write(key: PREFS_KEY_EMAIL, value: email);
  }

  Future<String> getEmailSecure() async {
    return await flutterSecureStorage.read(key: PREFS_KEY_EMAIL) ?? "";
  }

  Future<void> setPasswordSecure(String password) async {
    flutterSecureStorage.write(key: PREFS_KEY_PASSWORD, value: password);
  }

  Future<String> getPasswordSecure() async {
    return await flutterSecureStorage.read(key: PREFS_KEY_PASSWORD) ?? "";
  }

//---------------------------------------------------------------------------------------------------------------------
}
