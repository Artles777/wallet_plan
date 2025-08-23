// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_bar.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseBarState on _BaseBarState, Store {
  Computed<String>? _$dateRangeComputed;

  @override
  String get dateRange => (_$dateRangeComputed ??= Computed<String>(
    () => super.dateRange,
    name: '_BaseBarState.dateRange',
  )).value;

  late final _$dateStartAtom = Atom(
    name: '_BaseBarState.dateStart',
    context: context,
  );

  @override
  DateTime get dateStart {
    _$dateStartAtom.reportRead();
    return super.dateStart;
  }

  @override
  set dateStart(DateTime value) {
    _$dateStartAtom.reportWrite(value, super.dateStart, () {
      super.dateStart = value;
    });
  }

  late final _$dateEndAtom = Atom(
    name: '_BaseBarState.dateEnd',
    context: context,
  );

  @override
  DateTime get dateEnd {
    _$dateEndAtom.reportRead();
    return super.dateEnd;
  }

  @override
  set dateEnd(DateTime value) {
    _$dateEndAtom.reportWrite(value, super.dateEnd, () {
      super.dateEnd = value;
    });
  }

  late final _$_BaseBarStateActionController = ActionController(
    name: '_BaseBarState',
    context: context,
  );

  @override
  void searchHandler() {
    final _$actionInfo = _$_BaseBarStateActionController.startAction(
      name: '_BaseBarState.searchHandler',
    );
    try {
      return super.searchHandler();
    } finally {
      _$_BaseBarStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void openNotifications() {
    final _$actionInfo = _$_BaseBarStateActionController.startAction(
      name: '_BaseBarState.openNotifications',
    );
    try {
      return super.openNotifications();
    } finally {
      _$_BaseBarStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showCalendar() {
    final _$actionInfo = _$_BaseBarStateActionController.startAction(
      name: '_BaseBarState.showCalendar',
    );
    try {
      return super.showCalendar();
    } finally {
      _$_BaseBarStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dateStart: ${dateStart},
dateEnd: ${dateEnd},
dateRange: ${dateRange}
    ''';
  }
}
