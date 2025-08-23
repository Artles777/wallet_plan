// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HistoryState on _HistoryState, Store {
  Computed<double>? _$minSizePanelHistoryComputed;

  @override
  double get minSizePanelHistory =>
      (_$minSizePanelHistoryComputed ??= Computed<double>(
        () => super.minSizePanelHistory,
        name: '_HistoryState.minSizePanelHistory',
      )).value;

  late final _$_HistoryStateActionController = ActionController(
    name: '_HistoryState',
    context: context,
  );

  @override
  void setFocusSearch(BuildContext context) {
    final _$actionInfo = _$_HistoryStateActionController.startAction(
      name: '_HistoryState.setFocusSearch',
    );
    try {
      return super.setFocusSearch(context);
    } finally {
      _$_HistoryStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
minSizePanelHistory: ${minSizePanelHistory}
    ''';
  }
}
