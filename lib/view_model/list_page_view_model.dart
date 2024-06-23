import 'dart:async';

import 'package:github_repo_search_app/repository/github_repo_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/fetch_repo_api_query_param.dart';
import '../model/github_repo_model.dart';

// provider化
final githubRepoNotifierProvider = AutoDisposeAsyncNotifierProviderFamily<
    ListPageViewModel,
    List<GithubRepoModel>,
    FetchRepoApiQueryParam>(ListPageViewModel.new);

class ListPageViewModel extends AutoDisposeFamilyAsyncNotifier<
    List<GithubRepoModel>, FetchRepoApiQueryParam> {
  // 追加読み込み用ページ番号保持
  int _pageNum = 1;
  // すべて読み込んだかどうか
  bool hasMoreResults = true;

  final _defaultPerPage = 30;

  @override

  /// 初期化
  FutureOr<List<GithubRepoModel>> build(arg) async {
    // ページを1に指定
    arg = arg.copyWith(page: _pageNum);

    final githubRepoList = _fetchList(arg);

    return githubRepoList;
  }

  /// 追加読み込み
  Future<void> fetchNextPage() async {
    if (state.isLoading || !state.hasValue || !hasMoreResults) {
      return;
    }

    // pagenumをクエリパラメータに反映
    final param = arg.copyWith(page: _pageNum);
    state = const AsyncLoading<List<GithubRepoModel>>().copyWithPrevious(state);
    state = (await AsyncValue.guard(() => _fetchList(param)))
        .copyWithPrevious(state);
  }

  /// fetch method
  Future<List<GithubRepoModel>> _fetchList(FetchRepoApiQueryParam param) async {
    final repo = ref.read(githubRepoRepositoryProvider);

    // fetch
    final newList = await repo.fetchRepos(param);

    // リストがperPage以下ならすべて読み込んだと判定
    if (newList.length < (arg.perPage ?? _defaultPerPage)) {
      hasMoreResults = false;
    }

    // pagenum更新
    _pageNum++;

    // 追加読み込みの場合つなげて返す
    final currentList = state.value ?? [];
    return [...currentList, ...newList];
  }
}
