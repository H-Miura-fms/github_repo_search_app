import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/order_query_enum.dart';
import '../enums/sort_query_enum.dart';

part 'fetch_repo_api_query_param.freezed.dart';
part 'fetch_repo_api_query_param.g.dart';

@freezed

/// リポジトリ検索APIクエリ
class FetchRepoApiQueryParam with _$FetchRepoApiQueryParam {
  const factory FetchRepoApiQueryParam({
    required String keyWord,
    SortQuery? sort,
    OrderQuery? order,
    int? perPage,
    int? page,
  }) = _FetchRepoApiQueryParam;
  factory FetchRepoApiQueryParam.fromJson(Map<String, dynamic> json) =>
      _$FetchRepoApiQueryParamFromJson(json);
}
