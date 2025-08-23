// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_chart_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeChartState on _HomeChartState, Store {
  Computed<bool>? _$hasSelectedLinerComputed;

  @override
  bool get hasSelectedLiner => (_$hasSelectedLinerComputed ??= Computed<bool>(
    () => super.hasSelectedLiner,
    name: '_HomeChartState.hasSelectedLiner',
  )).value;
  Computed<bool>? _$hasSelectedBarComputed;

  @override
  bool get hasSelectedBar => (_$hasSelectedBarComputed ??= Computed<bool>(
    () => super.hasSelectedBar,
    name: '_HomeChartState.hasSelectedBar',
  )).value;
  Computed<bool>? _$hasSelectedPieComputed;

  @override
  bool get hasSelectedPie => (_$hasSelectedPieComputed ??= Computed<bool>(
    () => super.hasSelectedPie,
    name: '_HomeChartState.hasSelectedPie',
  )).value;
  Computed<ScrollController>? _$categoryScrollControllerComputed;

  @override
  ScrollController get categoryScrollController =>
      (_$categoryScrollControllerComputed ??= Computed<ScrollController>(
        () => super.categoryScrollController,
        name: '_HomeChartState.categoryScrollController',
      )).value;
  Computed<PanelController>? _$panelControllerComputed;

  @override
  PanelController get panelController =>
      (_$panelControllerComputed ??= Computed<PanelController>(
        () => super.panelController,
        name: '_HomeChartState.panelController',
      )).value;

  late final _$chartSelectedAtom = Atom(
    name: '_HomeChartState.chartSelected',
    context: context,
  );

  @override
  ChartSelected get chartSelected {
    _$chartSelectedAtom.reportRead();
    return super.chartSelected;
  }

  @override
  set chartSelected(ChartSelected value) {
    _$chartSelectedAtom.reportWrite(value, super.chartSelected, () {
      super.chartSelected = value;
    });
  }

  late final _$categoriesListAtom = Atom(
    name: '_HomeChartState.categoriesList',
    context: context,
  );

  @override
  ObservableList<CategoryIcon> get categoriesList {
    _$categoriesListAtom.reportRead();
    return super.categoriesList;
  }

  @override
  set categoriesList(ObservableList<CategoryIcon> value) {
    _$categoriesListAtom.reportWrite(value, super.categoriesList, () {
      super.categoriesList = value;
    });
  }

  late final _$_HomeChartStateActionController = ActionController(
    name: '_HomeChartState',
    context: context,
  );

  @override
  void openChartSettings(BuildContext context) {
    final _$actionInfo = _$_HomeChartStateActionController.startAction(
      name: '_HomeChartState.openChartSettings',
    );
    try {
      return super.openChartSettings(context);
    } finally {
      _$_HomeChartStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeViewChart(ChartSelected value) {
    final _$actionInfo = _$_HomeChartStateActionController.startAction(
      name: '_HomeChartState.changeViewChart',
    );
    try {
      return super.changeViewChart(value);
    } finally {
      _$_HomeChartStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void handlerScrollCategories(CategoryDirection direction) {
    final _$actionInfo = _$_HomeChartStateActionController.startAction(
      name: '_HomeChartState.handlerScrollCategories',
    );
    try {
      return super.handlerScrollCategories(direction);
    } finally {
      _$_HomeChartStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetDraggableController() {
    final _$actionInfo = _$_HomeChartStateActionController.startAction(
      name: '_HomeChartState.resetDraggableController',
    );
    try {
      return super.resetDraggableController();
    } finally {
      _$_HomeChartStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chartSelected: ${chartSelected},
categoriesList: ${categoriesList},
hasSelectedLiner: ${hasSelectedLiner},
hasSelectedBar: ${hasSelectedBar},
hasSelectedPie: ${hasSelectedPie},
categoryScrollController: ${categoryScrollController},
panelController: ${panelController}
    ''';
  }
}
