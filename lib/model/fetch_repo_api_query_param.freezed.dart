// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_repo_api_query_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchRepoApiQueryParam _$FetchRepoApiQueryParamFromJson(
    Map<String, dynamic> json) {
  return _FetchRepoApiQueryParam.fromJson(json);
}

/// @nodoc
mixin _$FetchRepoApiQueryParam {
  String get keyWord => throw _privateConstructorUsedError;
  SortQuery? get sort => throw _privateConstructorUsedError;
  OrderQuery? get order => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchRepoApiQueryParamCopyWith<FetchRepoApiQueryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRepoApiQueryParamCopyWith<$Res> {
  factory $FetchRepoApiQueryParamCopyWith(FetchRepoApiQueryParam value,
          $Res Function(FetchRepoApiQueryParam) then) =
      _$FetchRepoApiQueryParamCopyWithImpl<$Res, FetchRepoApiQueryParam>;
  @useResult
  $Res call(
      {String keyWord,
      SortQuery? sort,
      OrderQuery? order,
      int? perPage,
      int? page});
}

/// @nodoc
class _$FetchRepoApiQueryParamCopyWithImpl<$Res,
        $Val extends FetchRepoApiQueryParam>
    implements $FetchRepoApiQueryParamCopyWith<$Res> {
  _$FetchRepoApiQueryParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyWord = null,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      keyWord: null == keyWord
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortQuery?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderQuery?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchRepoApiQueryParamImplCopyWith<$Res>
    implements $FetchRepoApiQueryParamCopyWith<$Res> {
  factory _$$FetchRepoApiQueryParamImplCopyWith(
          _$FetchRepoApiQueryParamImpl value,
          $Res Function(_$FetchRepoApiQueryParamImpl) then) =
      __$$FetchRepoApiQueryParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String keyWord,
      SortQuery? sort,
      OrderQuery? order,
      int? perPage,
      int? page});
}

/// @nodoc
class __$$FetchRepoApiQueryParamImplCopyWithImpl<$Res>
    extends _$FetchRepoApiQueryParamCopyWithImpl<$Res,
        _$FetchRepoApiQueryParamImpl>
    implements _$$FetchRepoApiQueryParamImplCopyWith<$Res> {
  __$$FetchRepoApiQueryParamImplCopyWithImpl(
      _$FetchRepoApiQueryParamImpl _value,
      $Res Function(_$FetchRepoApiQueryParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyWord = null,
    Object? sort = freezed,
    Object? order = freezed,
    Object? perPage = freezed,
    Object? page = freezed,
  }) {
    return _then(_$FetchRepoApiQueryParamImpl(
      keyWord: null == keyWord
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortQuery?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderQuery?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchRepoApiQueryParamImpl implements _FetchRepoApiQueryParam {
  const _$FetchRepoApiQueryParamImpl(
      {required this.keyWord, this.sort, this.order, this.perPage, this.page});

  factory _$FetchRepoApiQueryParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchRepoApiQueryParamImplFromJson(json);

  @override
  final String keyWord;
  @override
  final SortQuery? sort;
  @override
  final OrderQuery? order;
  @override
  final int? perPage;
  @override
  final int? page;

  @override
  String toString() {
    return 'FetchRepoApiQueryParam(keyWord: $keyWord, sort: $sort, order: $order, perPage: $perPage, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRepoApiQueryParamImpl &&
            (identical(other.keyWord, keyWord) || other.keyWord == keyWord) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyWord, sort, order, perPage, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRepoApiQueryParamImplCopyWith<_$FetchRepoApiQueryParamImpl>
      get copyWith => __$$FetchRepoApiQueryParamImplCopyWithImpl<
          _$FetchRepoApiQueryParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchRepoApiQueryParamImplToJson(
      this,
    );
  }
}

abstract class _FetchRepoApiQueryParam implements FetchRepoApiQueryParam {
  const factory _FetchRepoApiQueryParam(
      {required final String keyWord,
      final SortQuery? sort,
      final OrderQuery? order,
      final int? perPage,
      final int? page}) = _$FetchRepoApiQueryParamImpl;

  factory _FetchRepoApiQueryParam.fromJson(Map<String, dynamic> json) =
      _$FetchRepoApiQueryParamImpl.fromJson;

  @override
  String get keyWord;
  @override
  SortQuery? get sort;
  @override
  OrderQuery? get order;
  @override
  int? get perPage;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchRepoApiQueryParamImplCopyWith<_$FetchRepoApiQueryParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
