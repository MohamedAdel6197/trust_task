import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constants/string_constants.dart';
import '../../helper/shared_pref_helper.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    String? token = await SharedPrefHelper.getSecuredString(
      AppConstants.guestId,
    );
    log("addDioHeaders token : $token");

    if (token.isEmpty) {
      dio?.options.headers = {
        'Accept': 'application/json',
        // 'Content-Type': 'application/json',
      };
    } else {
      dio?.options.headers = {
        'Accept': 'application/json',
        // 'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };
    }
  }

  static void addDioInterceptors() async {
    String? token = await SharedPrefHelper.getSecuredString(
      AppConstants.guestId,
    );

    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        // responseBody: true,
      ),
    );

    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (token.isNotEmpty) {
            options.headers["Authorization"] = "Bearer $token";
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
  }

  static void setTokenIntoHeader(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
  }
}
