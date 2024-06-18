// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GithubRepoModel _$GithubRepoModelFromJson(Map<String, dynamic> json) {
  return _GithubRepoModel.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String get fullName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  OwnerModel get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "stargazers_count")
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: "watchers_count")
  int get watchersCount => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: "forks_count")
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: "open_issues_count")
  int get openIssuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoModelCopyWith<GithubRepoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoModelCopyWith<$Res> {
  factory $GithubRepoModelCopyWith(
          GithubRepoModel value, $Res Function(GithubRepoModel) then) =
      _$GithubRepoModelCopyWithImpl<$Res, GithubRepoModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "full_name") String fullName,
      String description,
      OwnerModel owner,
      @JsonKey(name: "stargazers_count") int stargazersCount,
      @JsonKey(name: "watchers_count") int watchersCount,
      String language,
      @JsonKey(name: "forks_count") int forksCount,
      @JsonKey(name: "open_issues_count") int openIssuesCount});

  $OwnerModelCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepoModelCopyWithImpl<$Res, $Val extends GithubRepoModel>
    implements $GithubRepoModelCopyWith<$Res> {
  _$GithubRepoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? description = null,
    Object? owner = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerModelCopyWith<$Res> get owner {
    return $OwnerModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubRepoModelImplCopyWith<$Res>
    implements $GithubRepoModelCopyWith<$Res> {
  factory _$$GithubRepoModelImplCopyWith(_$GithubRepoModelImpl value,
          $Res Function(_$GithubRepoModelImpl) then) =
      __$$GithubRepoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "full_name") String fullName,
      String description,
      OwnerModel owner,
      @JsonKey(name: "stargazers_count") int stargazersCount,
      @JsonKey(name: "watchers_count") int watchersCount,
      String language,
      @JsonKey(name: "forks_count") int forksCount,
      @JsonKey(name: "open_issues_count") int openIssuesCount});

  @override
  $OwnerModelCopyWith<$Res> get owner;
}

/// @nodoc
class __$$GithubRepoModelImplCopyWithImpl<$Res>
    extends _$GithubRepoModelCopyWithImpl<$Res, _$GithubRepoModelImpl>
    implements _$$GithubRepoModelImplCopyWith<$Res> {
  __$$GithubRepoModelImplCopyWithImpl(
      _$GithubRepoModelImpl _value, $Res Function(_$GithubRepoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? description = null,
    Object? owner = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
  }) {
    return _then(_$GithubRepoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepoModelImpl implements _GithubRepoModel {
  const _$GithubRepoModelImpl(
      {required this.name,
      @JsonKey(name: "full_name") required this.fullName,
      required this.description,
      required this.owner,
      @JsonKey(name: "stargazers_count") required this.stargazersCount,
      @JsonKey(name: "watchers_count") required this.watchersCount,
      required this.language,
      @JsonKey(name: "forks_count") required this.forksCount,
      @JsonKey(name: "open_issues_count") required this.openIssuesCount});

  factory _$GithubRepoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepoModelImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "full_name")
  final String fullName;
  @override
  final String description;
  @override
  final OwnerModel owner;
  @override
  @JsonKey(name: "stargazers_count")
  final int stargazersCount;
  @override
  @JsonKey(name: "watchers_count")
  final int watchersCount;
  @override
  final String language;
  @override
  @JsonKey(name: "forks_count")
  final int forksCount;
  @override
  @JsonKey(name: "open_issues_count")
  final int openIssuesCount;

  @override
  String toString() {
    return 'GithubRepoModel(name: $name, fullName: $fullName, description: $description, owner: $owner, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepoModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      fullName,
      description,
      owner,
      stargazersCount,
      watchersCount,
      language,
      forksCount,
      openIssuesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepoModelImplCopyWith<_$GithubRepoModelImpl> get copyWith =>
      __$$GithubRepoModelImplCopyWithImpl<_$GithubRepoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepoModelImplToJson(
      this,
    );
  }
}

abstract class _GithubRepoModel implements GithubRepoModel {
  const factory _GithubRepoModel(
      {required final String name,
      @JsonKey(name: "full_name") required final String fullName,
      required final String description,
      required final OwnerModel owner,
      @JsonKey(name: "stargazers_count") required final int stargazersCount,
      @JsonKey(name: "watchers_count") required final int watchersCount,
      required final String language,
      @JsonKey(name: "forks_count") required final int forksCount,
      @JsonKey(name: "open_issues_count")
      required final int openIssuesCount}) = _$GithubRepoModelImpl;

  factory _GithubRepoModel.fromJson(Map<String, dynamic> json) =
      _$GithubRepoModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "full_name")
  String get fullName;
  @override
  String get description;
  @override
  OwnerModel get owner;
  @override
  @JsonKey(name: "stargazers_count")
  int get stargazersCount;
  @override
  @JsonKey(name: "watchers_count")
  int get watchersCount;
  @override
  String get language;
  @override
  @JsonKey(name: "forks_count")
  int get forksCount;
  @override
  @JsonKey(name: "open_issues_count")
  int get openIssuesCount;
  @override
  @JsonKey(ignore: true)
  _$$GithubRepoModelImplCopyWith<_$GithubRepoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
