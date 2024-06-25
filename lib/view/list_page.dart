import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repo_search_app/commponent/search_area.dart';
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
    final TextEditingController textEditingController =
        useTextEditingController();

    // 検索クエリパラメータ
    final param = useState(const FetchRepoApiQueryParam(keyWord: ""));

    // リストstate
    final reposAsyncValue = ref.watch(githubRepoNotifierProvider(param.value));

    // リフレッシュ可能状態(リフレッシュのみローディングを表示)
    final isRefreshArea = useState(false);

    // 追加読み込み処理
    useEffect(() {
      scrollController.addListener(
        () {
          if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent * 0.9) {
            ref
                .read(githubRepoNotifierProvider(param.value).notifier)
                .fetchNextPage()
                .then((_) {});
          }
          // スクロールしたらリフレッシュ可能状態解除
          isRefreshArea.value = false;
        },
      );

      return () => scrollController.dispose();
    }, [scrollController]);

    // 追加読み込みフッター
    Widget buildFooter(
        AsyncValue<List<dynamic>> reposAsyncValue, ListPageViewModel notifier) {
      if (reposAsyncValue.isLoading) {
        return const CircularProgressIndicator();
      } else if (!ref
          .read(githubRepoNotifierProvider(param.value).notifier)
          .hasMoreResults) {
        return const Text(
          'すべて読み込みました',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (reposAsyncValue.hasError) {
        return const Text(
          'エラーが発生しました',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    }

    return Scaffold(
      body: RefreshIndicator(
        // pull to refresh
        onRefresh: () async {
          if (reposAsyncValue.isRefreshing) {
            return;
          }
          //リフレッシュ可能状態にする
          isRefreshArea.value = true;
          final _ = ref.refresh(githubRepoNotifierProvider(param.value));
        },
        child: Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              physics: (param.value.keyWord.isEmpty)
                  ? null
                  : const AlwaysScrollableScrollPhysics(),
              slivers: [
                // 検索欄
                SliverAppBar(
                  flexibleSpace: SearchArea(
                    controller: textEditingController,
                    onSubmitted: (keyWord) {
                      param.value = param.value.copyWith(keyWord: keyWord);
                    },
                  ),
                  expandedHeight: 68,
                ),
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
                // フッター
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: buildFooter(
                        reposAsyncValue,
                        ref.read(
                            githubRepoNotifierProvider(param.value).notifier),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // リフレッシュ時，画面全体にローディング
            if (reposAsyncValue.isRefreshing && isRefreshArea.value)
              const ColoredBox(
                color: Colors.black26,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
