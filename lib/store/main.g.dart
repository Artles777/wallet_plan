// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainState on _MainState, Store {
  Computed<ThemeEnum>? _$themeComputed;

  @override
  ThemeEnum get theme => (_$themeComputed ??= Computed<ThemeEnum>(
    () => super.theme,
    name: '_MainState.theme',
  )).value;

  late final _$_hasLightThemeAtom = Atom(
    name: '_MainState._hasLightTheme',
    context: context,
  );

  @override
  bool get _hasLightTheme {
    _$_hasLightThemeAtom.reportRead();
    return super._hasLightTheme;
  }

  @override
  set _hasLightTheme(bool value) {
    _$_hasLightThemeAtom.reportWrite(value, super._hasLightTheme, () {
      super._hasLightTheme = value;
    });
  }

  late final _$_MainStateActionController = ActionController(
    name: '_MainState',
    context: context,
  );

  @override
  void changeTheme() {
    final _$actionInfo = _$_MainStateActionController.startAction(
      name: '_MainState.changeTheme',
    );
    try {
      return super.changeTheme();
    } finally {
      _$_MainStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme}
    ''';
  }
}
