import 'dart:developer' as dev;
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/http/custom_dio.dart';

final dioProvider = Provider<MyDio>(
  (ref) {
    final dio = MyDio();
    dio.options = BaseOptions();

    // log表示
    dio.interceptors.add(
      LogInterceptor(
        logPrint: (object) => dev.log("\x1B[32m${object.toString()}\x1B[0m",
            name: "\x1B[32m If/Logger \x1B[0m"),
      ),
    );

    return dio;
  },
);
