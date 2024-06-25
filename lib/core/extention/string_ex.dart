import '../../i18n/strings.g.dart';

extension StringAppLocaleExtensions on String {
  AppLocale? toAppLocale() {
    switch (this) {
      case 'en':
        return AppLocale.en;
      case 'ja':
        return AppLocale.ja;
      default:
        return null;
    }
  }
}
