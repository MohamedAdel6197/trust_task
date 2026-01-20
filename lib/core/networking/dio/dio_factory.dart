import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static const String _username = 'testapp';
  static const String _password = '5S0Q YjyH 4s3G elpe 5F8v u8as';

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

  static String _getBasicAuthHeader() {
    final credentials = '$_username:$_password';
    final encoded = base64Encode(utf8.encode(credentials));
    return 'Basic $encoded';
  }

  static void addDioHeaders() {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': _getBasicAuthHeader(),
    };
    log("addDioHeaders: Authorization header set");
  }

  static void addDioInterceptors() {
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
          // Ensure Basic Auth is always present
          options.headers["Authorization"] = _getBasicAuthHeader();
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
}
