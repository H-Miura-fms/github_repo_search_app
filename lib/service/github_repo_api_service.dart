import 'package:dio/dio.dart';
import 'package:github_repo_search_app/enums/order_query_enum.dart';
import 'package:github_repo_search_app/enums/sort_query_enum.dart';
import 'package:github_repo_search_app/provider/common/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'github_repo_api_service.g.dart';

final githubRepoApiServiceProvider = Provider((ref) {
  return GithubRepoApiService(ref.read(dioProvider));
});

@RestApi()
abstract class GithubRepoApiService {
  factory GithubRepoApiService(Dio dio) = _GithubRepoApiService;

  @GET("/search/repositories")

  /// Repository取得
  Future<dynamic> fetchGitHubRepositories({
    @Query("q") required String keyWord,
    @Query("sort") SortQuery? sort,
    @Query("order") OrderQuery? oder,
    @Query("per_page") int? perPage,
    @Query("page") int? page,
  });
}
