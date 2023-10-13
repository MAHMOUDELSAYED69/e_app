import 'package:dio/dio.dart';

import '../../core/helper/custom_print.dart';

class Service {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: "http://magdsoft.ahmedshawky.fun/api/",
        receiveDataWhenStatusError: true));
  }

  //! GET
  static Future<void> getService(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    late Response response;
    try {
      response = await dio.get(path, queryParameters: queryParameters);
      kPrint(response.data, title: response.statusCode.toString());
    } on DioException catch (err) {
      kPrint("error from dio :$err", title: response.statusCode.toString());
    } catch (err) {
      kPrint("golobal error:$err");
    }
  }
  //! POST
  static Future<void> postData(
      {required Map<String, dynamic> data, required String path}) async {
    try {
      final response = await dio.post(path, data: data);
      if (response.statusCode == 200) {
        kPrint('Data posted successfully');
      } else {
        kPrint('Failed to post data. Error: ${response.statusCode}');
      }
    } catch (error) {
      kPrint('An error occurred: $error');
    }
  }
}
