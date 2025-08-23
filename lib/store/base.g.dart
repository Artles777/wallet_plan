// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseState on _BaseState, Store {
  late final _$premiumAccountAtom = Atom(
    name: '_BaseState.premiumAccount',
    context: context,
  );

  @override
  bool get premiumAccount {
    _$premiumAccountAtom.reportRead();
    return super.premiumAccount;
  }

  @override
  set premiumAccount(bool value) {
    _$premiumAccountAtom.reportWrite(value, super.premiumAccount, () {
      super.premiumAccount = value;
    });
  }

  @override
  String toString() {
    return '''
premiumAccount: ${premiumAccount}
    ''';
  }
}
