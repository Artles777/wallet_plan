// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeState on _HomeState, Store {
  Computed<double>? _$minSizeSheetComputed;

  @override
  double get minSizeSheet => (_$minSizeSheetComputed ??= Computed<double>(
    () => super.minSizeSheet,
    name: '_HomeState.minSizeSheet',
  )).value;
  Computed<double>? _$maxSizeSheetComputed;

  @override
  double get maxSizeSheet => (_$maxSizeSheetComputed ??= Computed<double>(
    () => super.maxSizeSheet,
    name: '_HomeState.maxSizeSheet',
  )).value;
  Computed<double>? _$sizeSheetComputed;

  @override
  double get sizeSheet => (_$sizeSheetComputed ??= Computed<double>(
    () => super.sizeSheet,
    name: '_HomeState.sizeSheet',
  )).value;
  Computed<double>? _$maxHeightSheetComputed;

  @override
  double get maxHeightSheet => (_$maxHeightSheetComputed ??= Computed<double>(
    () => super.maxHeightSheet,
    name: '_HomeState.maxHeightSheet',
  )).value;
  Computed<List<CardListDTO>>? _$cardsListComputed;

  @override
  List<CardListDTO> get cardsList =>
      (_$cardsListComputed ??= Computed<List<CardListDTO>>(
        () => super.cardsList,
        name: '_HomeState.cardsList',
      )).value;

  late final _$layoutSizeAtom = Atom(
    name: '_HomeState.layoutSize',
    context: context,
  );

  @override
  double get layoutSize {
    _$layoutSizeAtom.reportRead();
    return super.layoutSize;
  }

  @override
  set layoutSize(double value) {
    _$layoutSizeAtom.reportWrite(value, super.layoutSize, () {
      super.layoutSize = value;
    });
  }

  late final _$_HomeStateActionController = ActionController(
    name: '_HomeState',
    context: context,
  );

  @override
  Color luminanceColor(Color color) {
    final _$actionInfo = _$_HomeStateActionController.startAction(
      name: '_HomeState.luminanceColor',
    );
    try {
      return super.luminanceColor(color);
    } finally {
      _$_HomeStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
layoutSize: ${layoutSize},
minSizeSheet: ${minSizeSheet},
maxSizeSheet: ${maxSizeSheet},
sizeSheet: ${sizeSheet},
maxHeightSheet: ${maxHeightSheet},
cardsList: ${cardsList}
    ''';
  }
}
