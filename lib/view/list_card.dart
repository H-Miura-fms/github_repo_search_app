import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_repo_search_app/model/github_repo_model.dart';
import 'package:github_repo_search_app/provider/common/device_type_provider.dart';
import 'package:github_repo_search_app/view/detail_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/common/selected_repo_provider.dart';

class ListCard extends ConsumerWidget {
  final GithubRepoModel repo;
  const ListCard({super.key, required this.repo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // 選択Repository更新
        ref.read(selectRepoStateProvider.notifier).state = repo;
        // モバイル端末の場合，詳細ページに遷移
        if (ref.read(deviceTypeProvider) == DeviceType.mobile) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const DetailPage();
              },
            ),
          );
        }
      },
      child: Card(
        // 選択されたら色を変える(タブレットのみ)
        color: (ref.watch(selectRepoStateProvider) == repo &&
                (ref.read(deviceTypeProvider) != DeviceType.mobile))
            ? Theme.of(context).colorScheme.primaryContainer
            : null,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${repo.owner.name}/", style: const TextStyle(fontSize: 10)),
              Text(
                repo.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
