// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search_app/model/owner_model.dart';

part 'github_repo_model.freezed.dart';
part 'github_repo_model.g.dart';

@freezed

/// GitHub Repository data model
class GithubRepoModel with _$GithubRepoModel {
  const factory GithubRepoModel({
    required String name,
    @JsonKey(name: "full_name") required String fullName,
    required String description,
    required OwnerModel owner,
    @JsonKey(name: "stargazers_count") required int stargazersCount,
    @JsonKey(name: "watchers_count") required int watchersCount,
    required String language,
    @JsonKey(name: "forks_count") required int forksCount,
    @JsonKey(name: "open_issues_count") required int openIssuesCount,
  }) = _GithubRepoModel;
  factory GithubRepoModel.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoModelFromJson(json);
}
