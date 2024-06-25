import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../i18n/strings.g.dart';
import 'shared_preference_provider.dart';

final localeNotiferProvider =
    NotifierProvider<LocaleNotifer, AppLocale>(LocaleNotifer.new);

// 言語設定管理
class LocaleNotifer extends Notifier<AppLocale> {
  late final SharedPreferences prefs = ref.read(sharedPreferencesProvider);
  @override
  AppLocale build() {
    return LocaleSettings.currentLocale;
  }

  Future<void> setLocale(AppLocale newLocale) async {
    state = newLocale;
    // 言語設定をローカルに保存
    String localeString = newLocale.name;
    prefs.setString("locale", localeString);
    LocaleSettings.setLocale(newLocale);
  }
}
