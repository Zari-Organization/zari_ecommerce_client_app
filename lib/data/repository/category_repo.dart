import 'package:flutter/material.dart';
import 'package:zariecommerce/data/datasource/remote/dio/dio_client.dart';
import 'package:zariecommerce/data/datasource/remote/exception/api_error_handler.dart';
import 'package:zariecommerce/data/model/response/base/api_response.dart';
import 'package:zariecommerce/utill/app_constants.dart';

class CategoryRepo {
  final DioClient dioClient;
  CategoryRepo({@required this.dioClient});

  Future<ApiResponse> getCategoryList() async {
    try {
      final response = await dioClient.get(
        AppConstants.CATEGORIES_URI);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}