import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_repo_search_app/provider/common/device_type_provider.dart';
import 'package:github_repo_search_app/provider/common/theme_state.dart';
import 'package:github_repo_search_app/view/detail_page.dart';
import 'package:github_repo_search_app/view/list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../i18n/strings.g.dart';
import '../provider/common/locale_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceType = ref.read(deviceTypeProvider);
    final themeState = ref.watch(themeStateProvider);

    // 言語選択
    final currentLocale = ref.watch(localeNotiferProvider);
    final localeNotifer = ref.read(localeNotiferProvider.notifier);

    // 言語設定リストタイル
    Widget localeSetting() {
      return ExpansionTile(
        childrenPadding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
        leading: const Icon(Icons.public_rounded),
        title: Text(t.language.title),
        children: AppLocale.values.map((AppLocale locale) {
          return ListTile(
            title: Row(
              children: [
                Text(t.language.label[locale.name]!),
                const Expanded(child: SizedBox()),
                Icon((currentLocale == locale) ? Icons.check_rounded : null),
              ],
            ),
            onTap: () {
              localeNotifer.setLocale(locale);
            },
          );
        }).toList(),
      );
    }

    // サイドバー
    Widget drawer() {
      return Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: DrawerHeader(
            child: Column(
              children: [
                ListTile(
                  title: Text(t.button_label.dark_mode),
                  trailing: Switch(
                    value: themeState,
                    onChanged: (val) async {
                      // theme変更
                      ref.read(themeStateProvider.notifier).setThemeState(val);
                    },
                  ),
                ),
                localeSetting(),
              ],
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
