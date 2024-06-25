// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_repo_api_query_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchRepoApiQueryParamImpl _$$FetchRepoApiQueryParamImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchRepoApiQueryParamImpl(
      keyWord: json['keyWord'] as String,
      sort: $enumDecodeNullable(_$SortQueryEnumMap, json['sort']),
      order: $enumDecodeNullable(_$OrderQueryEnumMap, json['order']),
      perPage: (json['perPage'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FetchRepoApiQueryParamImplToJson(
        _$FetchRepoApiQueryParamImpl instance) =>
    <String, dynamic>{
      'keyWord': instance.keyWord,
      'sort': _$SortQueryEnumMap[instance.sort],
      'order': _$OrderQueryEnumMap[instance.order],
      'perPage': instance.perPage,
      'page': instance.page,
    };

const _$SortQueryEnumMap = {
  SortQuery.stars: 'stars',
  SortQuery.forks: 'forks',
  SortQuery.issues: 'issues',
  SortQuery.updated: 'updated',
};

const _$OrderQueryEnumMap = {
  OrderQuery.desc: 'desc',
  OrderQuery.asc: 'asc',
};
