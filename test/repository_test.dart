import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search_app/model/fetch_repo_api_query_param.dart';
import 'package:github_repo_search_app/model/github_repo_model.dart';
import 'package:github_repo_search_app/repository/github_repo_repository.dart';
import 'package:github_repo_search_app/service/github_repo_api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([GithubRepoApiService])
import "repository_test.mocks.dart";

void main() {
  group("GithubRepoRepository", () {
    late MockGithubRepoApiService mockApiService;
    late GithubRepoRepository repository;

    setUp(() {
      mockApiService = MockGithubRepoApiService();
      repository = GithubRepoRepository(githubRepoApiService: mockApiService);
    });

    test("mock api resposnse", () async {
      // Arrange
      const param = FetchRepoApiQueryParam(keyWord: "flutter");
      final mockResponse = {
        "items": [
          {
            "name": "flutter",
            "full_name": "flutter/flutter",
            "owner": {
              "login": "flutter",
              "avatar_url":
                  "https://avatars.githubusercontent.com/u/14101776?v=4",
            },
            "description":
                "Flutter makes it easy and fast to build beautiful apps for mobile and beyond",
            'stargazers_count': 100000,
            'watchers_count': 100000,
            'language': 'Dart',
            'forks_count': 15000,
            'open_issues_count': 9000,
          },
        ]
      };

      when(mockApiService.fetchGitHubRepositories(keyWord: "flutter"))
          .thenAnswer((_) async => mockResponse);

      // fetch
      final result = await repository.fetchRepos(param);

      // 検証
      expect(result, isA<List<GithubRepoModel>>());
      expect(result.length, 1);
      expect(result[0].name, "flutter");
      expect(result[0].fullName, "flutter/flutter");
      expect(result[0].owner.name, "flutter");
      expect(result[0].owner.avatarUrl,
          "https://avatars.githubusercontent.com/u/14101776?v=4");
      expect(result[0].description,
          "Flutter makes it easy and fast to build beautiful apps for mobile and beyond");
      expect(result[0].stargazersCount, 100000);
      expect(result[0].watchersCount, 100000);
      expect(result[0].language, 'Dart');
      expect(result[0].forksCount, 15000);
      expect(result[0].openIssuesCount, 9000);
    });

    test("DioException", () async {
      // dioException作成
      const param = FetchRepoApiQueryParam(keyWord: "flutter");
      when(mockApiService.fetchGitHubRepositories(keyWord: "flutter"))
          .thenThrow(DioException(requestOptions: RequestOptions(path: "")));

      expect(() => repository.fetchRepos(param), throwsA(isA<DioException>()));
    });

    test("other exception", () async {
      // Exception作成
      const param = FetchRepoApiQueryParam(keyWord: "flutter");
      when(mockApiService.fetchGitHubRepositories(keyWord: "flutter"))
          .thenThrow(Exception("Unknown error"));

      // Act & Assert
      expect(() => repository.fetchRepos(param), throwsException);
    });
  });
}
