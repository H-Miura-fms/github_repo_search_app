import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_repo_search_app/provider/common/device_type_provider.dart';
import 'package:github_repo_search_app/provider/common/theme_state.dart';
import 'package:github_repo_search_app/view/detail_page.dart';
import 'package:github_repo_search_app/view/list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceType = ref.read(deviceTypeProvider);
    final themeState = ref.watch(themeStateProvider);

    // サイドバー
    Widget drawer() {
      return Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: DrawerHeader(
            child: ListTile(
              title: const Text('DarkTheme'),
              trailing: Switch(
                value: themeState,
                onChanged: (val) async {
                  // theme変更
                  ref.read(themeStateProvider.notifier).setThemeState(val);
                },
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: const Text("GitHub Repository Search"),
      ),
      // タブレットの場合，listと詳細を横並びにする
      body: (deviceType == DeviceType.tablet)
          ? LayoutBuilder(
              builder: (context, constraints) {
                double listPageWidth = constraints.maxWidth * 0.4;

                return Row(
                  children: [
                    SizedBox(
                      width: listPageWidth,
                      child: const ListPage(),
                    ),
                    // 詳細ページ
                    const Expanded(child: DetailPage())
                  ],
                );
              },
            )
          : const ListPage(),
    );
  }
}
