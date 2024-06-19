// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepoModelImpl _$$GithubRepoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepoModelImpl(
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      description: json['description'] as String?,
      owner: OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      watchersCount: (json['watchers_count'] as num).toInt(),
      language: json['language'] as String?,
      forksCount: (json['forks_count'] as num).toInt(),
      openIssuesCount: (json['open_issues_count'] as num).toInt(),
    );

Map<String, dynamic> _$$GithubRepoModelImplToJson(
        _$GithubRepoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'owner': instance.owner,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
    };
