// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get accounts => 'Accounts';

  @override
  String get income => 'Income';

  @override
  String get expense => 'Expense';

  @override
  String get settings_chart => 'Settings chart';

  @override
  String get settings_charts => 'Settings chart';

  @override
  String get categories => 'Категории';

  @override
  String main_pages(String page) {
    String _temp0 = intl.Intl.selectLogic(page, {
      'categories': 'Категории',
      'news': 'Лента новостей',
      'settings': 'Настройки',
      'help': 'Помощь',
      'other': '-',
    });
    return '$_temp0';
  }
}
