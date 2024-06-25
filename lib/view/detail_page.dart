import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_search_app/model/github_repo_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../core/theme/repo_count_color.dart';
import '../provider/common/selected_repo_provider.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GithubRepoModel? repo = ref.watch(selectRepoStateProvider);

    final CountBackgroundColor countBackgroundColor =
        Theme.of(context).extension<CountBackgroundColor>()!;

    // アバター
    Widget ownerIcon(String url) {
      return CircleAvatar(
        radius: 18,
        backgroundColor: const Color.fromARGB(255, 204, 204, 204),
        child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.white,
          backgroundImage: CachedNetworkImageProvider(url),
        ),
      );
    }

    // リポジトリ説明
    Widget descriptionArea() {
      return SizedBox(
        width: double.maxFinite,
        child: Card(
          elevation: 0,
          // margin: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              repo!.description ?? "",
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      );
    }

    // 主要言語
    Widget language() {
      return Card(
        elevation: 0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.circle,
                size: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                repo!.language ?? "",
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      );
    }

    // 各カウント
    Widget counts(IconData icon, int count, String countTitile,
        [Color? backgroundColor]) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(
              width: 5,
            ),
            Row(
              children: [
                Text(
                  "$count",
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  countTitile,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        ),
      );
    }

    // メインビルド
    return Scaffold(
      appBar: AppBar(
        // iconとリポジトリ名
        title: Row(
          children: [
            if (repo != null) ownerIcon(repo.owner.avatarUrl),
            const SizedBox(
              width: 10,
            ),
            Text(repo?.fullName ?? ""),
          ],
        ),
      ),
      body: (repo != null)
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 説明
                  if (repo.description != null) descriptionArea(),
                  // 言語
                  if (repo.language != null) language(),
                  // star & watcher
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: counts(
                            Icons.star_border_rounded,
                            repo.stargazersCount,
                            "stars",
                            countBackgroundColor.starColor),
                      ),
                      Expanded(
                        flex: 1,
                        child: counts(
                          Icons.visibility_outlined,
                          repo.watchersCount,
                          "watchers",
                          countBackgroundColor.watcherColor,
                        ),
                      ),
                    ],
                  ),
                  // forks & isuues
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: counts(
                          Symbols.family_history_rounded,
                          repo.forksCount,
                          "forks",
                          countBackgroundColor.forkColor,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: counts(
                          Icons.adjust,
                          repo.openIssuesCount,
                          "isuues",
                          countBackgroundColor.issueColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}
