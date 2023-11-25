import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'cache_helper.dart';

class DioHelper {
  final _dio = Dio(BaseOptions(
    baseUrl: 'https://my-safe-space.alacrity.technology/api/',
  ));

  Map<String, dynamic> headers = CacheHelper.getValue("token") == null
      ? {
          "Accept": "application/json",
        }
      : {
          "Accept": "application/json",
          "Authorization":
              "${CacheHelper.getValue("tokenType")} ${CacheHelper.getValue("token")}",
        };

  Future<CustomResponse> post(String endPoint,
      {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(
        endPoint,
        data: FormData.fromMap(data ?? {}),
        options: Options(headers: headers),
      );

      return CustomResponse(
          message: response.statusCode.toString(),
          isSuccess: true,
          response: response);
    } on DioError catch (ex) {
      return CustomResponse(
        message: ex.response!.data["message"],
        isSuccess: false,
      );
    }
  }
}

// use this class to custom the response
class CustomResponse {
  final Response? response;
  final String message;
  final bool isSuccess;

  CustomResponse(
      {this.response, required this.message, required this.isSuccess});
}
