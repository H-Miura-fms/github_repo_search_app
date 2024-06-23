import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repo_search_app/model/fetch_repo_api_query_param.dart';
import 'package:github_repo_search_app/view/list_card.dart';
import 'package:github_repo_search_app/view_model/list_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListPage extends HookConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // controller
    final ScrollController scrollController = useScrollController();

    // 検索クエリパラメータ
    final param = useState(const FetchRepoApiQueryParam(keyWord: "flutter"));

    // リストstate
    final reposAsyncValue = ref.watch(githubRepoNotifierProvider(param.value));

    return Scaffold(
      appBar: AppBar(
        title: const Text("GitHub Repositoy Serch"),
      ),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          // 検索結果またはローディング/エラー表示
          reposAsyncValue.when(
            data: (repos) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final repo = repos[index];
                    return ListCard(repo: repo);
                  },
                  childCount: repos.length,
                ),
              );
            },
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, stackTrace) => SliverFillRemaining(
              child: Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}
