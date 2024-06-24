import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_repo_search_app/provider/common/device_type_provider.dart';
import 'package:github_repo_search_app/view/main_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  // 明示的に初期化
  WidgetsFlutterBinding.ensureInitialized();

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
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MaterialApp(
        title: 'github repository search',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
