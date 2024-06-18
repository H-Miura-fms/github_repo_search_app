import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class MyDio with DioMixin implements Dio {
  @override
  set options(BaseOptions options) {
    options.baseUrl = "https://api.github.com";
    options.headers = {"Accept": "application/vnd.github+json"};
    super.options = options;
  }

  @override
  HttpClientAdapter get httpClientAdapter => IOHttpClientAdapter();
}
