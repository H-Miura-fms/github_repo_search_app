import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_repo_search_app/core/theme/custom_theme.dart';
import 'package:github_repo_search_app/provider/common/device_type_provider.dart';
import 'package:github_repo_search_app/view/main_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'provider/common/shared_preference_provider.dart';
import 'provider/common/theme_state.dart';

void main() async {
  // 明示的に初期化
  WidgetsFlutterBinding.ensureInitialized();

// sharedPreferencesインスタンス取得
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // デバイスサイズ取得
  Size deviceSize = PlatformDispatcher.instance.views.first.physicalSize /
      PlatformDispatcher.instance.views.first.devicePixelRatio;

  // 幅が600以上だったらタブレット判定
  bool istablet = (deviceSize.shortestSide > 600);

  // タブレットでない場合縦に固定
  if (!istablet) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          prefs,
        ),
        deviceTypeProvider.overrideWithValue(
            istablet ? DeviceType.tablet : DeviceType.mobile),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final isDark = ref.watch(themeStateProvider);
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp(
        title: 'github repository search',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
        home: const MainPage(),
      ),
    );
  }
}
