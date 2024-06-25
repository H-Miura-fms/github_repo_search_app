import 'package:github_repo_search_app/provider/common/shared_preference_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// dart theme state管理
final themeStateProvider = NotifierProvider<ThemeState, bool>(ThemeState.new);

class ThemeState extends Notifier<bool> {
  @override
  bool build() {
    return ref.read(sharedPreferencesProvider).getBool("isDark") ?? false;
  }

  void setThemeState(bool newVal) async {
    await ref.read(sharedPreferencesProvider).setBool("isDark", newVal);
    state = newVal;
  }
}
