import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../app/depndency_injection.dart';
import '../cache/app_preferences.dart';
import '../constants/constants.dart';
import '../constants/endpoints.dart';
import 'general_dio_interceptor.dart';

const String APPLICATION_JSON = 'application/json';
const String MULTIPART_JSON = 'multipart/form-data';
const String CONTENT_TYPE = 'content-type';
const String ACCEPT = 'accept';
const String AUTHORIZATION = 'authorization';
const String DEFAULT_LANGUAGE = 'lang';
const String API_KEY = 'Ocp-Apim-Subscription-Key';

class DioFactory {
  final AppPreferences _appPreferences;
  DioFactory(this._appPreferences);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    Duration timeOut = const Duration(seconds: 60);
    String language = await _appPreferences.getAppLanguage();
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: 'Bearer ${await _appPreferences.getUserToken()}',
      DEFAULT_LANGUAGE: language,
      API_KEY: Constant.KEY
    };
    dio.options = BaseOptions(
      baseUrl: Constant.DOMAIN,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
      headers: headers,
    );
    dio.interceptors.add(instance<GeneralInterceptor>());
    if (kReleaseMode) {
      if (kDebugMode) {
        print('release mode no logs');
      }
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        // responseHeader: true,
        requestBody: true,
        request: true,
        responseBody: true,
      ));
    }
    return dio;
  }

  Future<Dio> getDioAuth() async {
    Dio dio = Dio();
    Duration timeOut = const Duration(seconds: 60);
    String language = await _appPreferences.getAppLanguage();
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION: 'Bearer ${await _appPreferences.getUserToken()}',
      DEFAULT_LANGUAGE: language,
      API_KEY: Constant.KEY
    };
    dio.options = BaseOptions(
      baseUrl: Constant.DOMAIN_AUTH,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
      headers: headers,
    );
    dio.interceptors.add(instance<GeneralInterceptor>());
    if (kReleaseMode) {
      if (kDebugMode) {
        print('release mode no logs');
      }
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        // responseHeader: true,
        requestBody: true,
        request: true,
        responseBody: true,
      ));
    }
    return dio;
  }
}
