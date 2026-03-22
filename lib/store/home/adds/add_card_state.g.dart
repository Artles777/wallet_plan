// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddCardState on _AddCardState, Store {
  Computed<String>? _$titleComputed;

  @override
  String get title => (_$titleComputed ??= Computed<String>(
    () => super.title,
    name: '_AddCardState.title',
  )).value;
  Computed<TypeCardEnum>? _$typeComputed;

  @override
  TypeCardEnum get type => (_$typeComputed ??= Computed<TypeCardEnum>(
    () => super.type,
    name: '_AddCardState.type',
  )).value;
  Computed<CurrencyCardEnum>? _$currencyComputed;

  @override
  CurrencyCardEnum get currency =>
      (_$currencyComputed ??= Computed<CurrencyCardEnum>(
        () => super.currency,
        name: '_AddCardState.currency',
      )).value;
  Computed<int>? _$titleCountComputed;

  @override
  int get titleCount => (_$titleCountComputed ??= Computed<int>(
    () => super.titleCount,
    name: '_AddCardState.titleCount',
  )).value;
  Computed<bool>? _$commonBalanceComputed;

  @override
  bool get commonBalance => (_$commonBalanceComputed ??= Computed<bool>(
    () => super.commonBalance,
    name: '_AddCardState.commonBalance',
  )).value;
  Computed<bool>? _$syncBankComputed;

  @override
  bool get syncBank => (_$syncBankComputed ??= Computed<bool>(
    () => super.syncBank,
    name: '_AddCardState.syncBank',
  )).value;
  Computed<WidgetStateProperty<Icon?>>? _$balanceThumbIconComputed;

  @override
  WidgetStateProperty<Icon?> get balanceThumbIcon =>
      (_$balanceThumbIconComputed ??= Computed<WidgetStateProperty<Icon?>>(
        () => super.balanceThumbIcon,
        name: '_AddCardState.balanceThumbIcon',
      )).value;
  Computed<WidgetStateProperty<Icon?>>? _$syncBankThumbIconComputed;

  @override
  WidgetStateProperty<Icon?> get syncBankThumbIcon =>
      (_$syncBankThumbIconComputed ??= Computed<WidgetStateProperty<Icon?>>(
        () => super.syncBankThumbIcon,
        name: '_AddCardState.syncBankThumbIcon',
      )).value;

  late final _$_AddCardStateActionController = ActionController(
    name: '_AddCardState',
    context: context,
  );

  @override
  void changeTitle(String value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeTitle',
    );
    try {
      return super.changeTitle(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeType(TypeCardEnum value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeType',
    );
    try {
      return super.changeType(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrency(CurrencyCardEnum value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeCurrency',
    );
    try {
      return super.changeCurrency(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBalance(String value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeBalance',
    );
    try {
      return super.changeBalance(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBank(BanksEnum value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeBank',
    );
    try {
      return super.changeBank(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCommonBalance(bool value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeCommonBalance',
    );
    try {
      return super.changeCommonBalance(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSyncBank(bool value) {
    final _$actionInfo = _$_AddCardStateActionController.startAction(
      name: '_AddCardState.changeSyncBank',
    );
    try {
      return super.changeSyncBank(value);
    } finally {
      _$_AddCardStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
type: ${type},
currency: ${currency},
titleCount: ${titleCount},
commonBalance: ${commonBalance},
syncBank: ${syncBank},
balanceThumbIcon: ${balanceThumbIcon},
syncBankThumbIcon: ${syncBankThumbIcon}
    ''';
  }
}
