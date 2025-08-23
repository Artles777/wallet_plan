// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get accounts => 'Счета';

  @override
  String get income => 'Доход';

  @override
  String get expense => 'Расход';

  @override
  String get settings_chart => 'Настройки графика';

  @override
  String get settings_charts => 'Настройки графиков';

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
