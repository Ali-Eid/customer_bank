import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fs_bank/features/auth/domain/models/user_model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../localization/language_manager.dart';
import '../themes/theme_manager.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage flutterSecureStorage;

  AppPreferences(this._sharedPreferences, this.flutterSecureStorage);

  String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
  String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
  String PREFS_KEY_THEME = 'PREFS_KEY_THEME';
  String PREFS_KEY_ON_BOARDING = 'PREFS_KEY_ON_BOARDING';
  String PREFS_KEY_USER_INFO = 'PREFS_KEY_USER_INFO';

  //Secure Key
  String PREFS_KEY_EMAIL = 'PREFS_KEY_EMAIL';
  String PREFS_KEY_PASSWORD = 'PREFS_KEY_PASSWORD';

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
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
      _sharedPreferences.setString(PREFS_KEY_LANG, lang);
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
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? '';
  }

  bool isLoggedIn() {
    String? token = _sharedPreferences.getString(PREFS_KEY_TOKEN);
    if (token?.isNotEmpty ?? false) {
      return true;
    } else {
      return false;
    }
  }

  ThemeData getTheme() {
    String? theme = _sharedPreferences.getString(PREFS_KEY_THEME);
    if (theme == ThemeDataType.dark.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  setTheme({required ThemeData themeData}) {
    _sharedPreferences.setString(PREFS_KEY_THEME, themeData.getValue());
  }

//-------------User info----------------------
  Future<void> setUserInfo(UserModel user) async {
    await _sharedPreferences.setString(
        PREFS_KEY_USER_INFO, json.encode(user.toJson()));
  }

  UserModel? getUserInfo() {
    String userInfoCached =
        _sharedPreferences.getString(PREFS_KEY_USER_INFO) ?? "";
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
