// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_panel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HistoryPanelState on _HistoryPanelState, Store {
  late final _$historyListAtom = Atom(
    name: '_HistoryPanelState.historyList',
    context: context,
  );

  @override
  ObservableList<HistoryItem> get historyList {
    _$historyListAtom.reportRead();
    return super.historyList;
  }

  @override
  set historyList(ObservableList<HistoryItem> value) {
    _$historyListAtom.reportWrite(value, super.historyList, () {
      super.historyList = value;
    });
  }

  @override
  String toString() {
    return '''
historyList: ${historyList}
    ''';
  }
}
