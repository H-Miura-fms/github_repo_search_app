import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:github_repo_search_app/model/fetch_repo_api_query_param.dart';
import 'package:github_repo_search_app/model/github_repo_model.dart';
import 'package:github_repo_search_app/service/github_repo_api_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// provider化
final githubRepoRepositoryProvider = Provider((ref) {
  return GithubRepoRepository(
      githubRepoApiService: ref.read(githubRepoApiServiceProvider));
});

abstract class GithubRepoRepositoryImpl {
  final GithubRepoApiService githubRepoApiService;
  GithubRepoRepositoryImpl({required this.githubRepoApiService});

  /// fetch Repository
  Future<List<GithubRepoModel>> fetchRepos(FetchRepoApiQueryParam param);
}

class GithubRepoRepository implements GithubRepoRepositoryImpl {
  @override
  GithubRepoApiService githubRepoApiService;

  GithubRepoRepository({required this.githubRepoApiService});

  @override
  Future<List<GithubRepoModel>> fetchRepos(FetchRepoApiQueryParam param) async {
    final List<GithubRepoModel> repoList = [];

    try {
      // api
      Map<String, dynamic> res =
          await githubRepoApiService.fetchGitHubRepositories(
        keyWord: param.keyWord,
        sort: param.sort,
        order: param.order,
        perPage: param.perPage,
        page: param.page,
      );

      // repoリストを取得
      List datas = res["items"];

      // datamodelに変換，Listに追加
      for (var data in datas) {
        final repo = GithubRepoModel.fromJson(data);
        repoList.add(repo);
      }

      return repoList;
    } on DioException catch (e, st) {
      // dioエラー(httpエラー)
      if (kDebugMode) {
        print("http error:${e.toString()} ${st.toString()}");
      }
      rethrow;
    } catch (e, st) {
      // その他のエラー
      if (kDebugMode) {
        print("other error:${e.toString()} ${st.toString()}");
      }
      rethrow;
    }
  }
}
