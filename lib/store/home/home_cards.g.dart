// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cards.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeCardsState on _HomeCardsState, Store {
  Computed<int?>? _$cardCountComputed;

  @override
  int? get cardCount => (_$cardCountComputed ??= Computed<int?>(
    () => super.cardCount,
    name: '_HomeCardsState.cardCount',
  )).value;

  late final _$cardsListAtom = Atom(
    name: '_HomeCardsState.cardsList',
    context: context,
  );

  @override
  ObservableList<CardDTO> get cardsList {
    _$cardsListAtom.reportRead();
    return super.cardsList;
  }

  @override
  set cardsList(ObservableList<CardDTO> value) {
    _$cardsListAtom.reportWrite(value, super.cardsList, () {
      super.cardsList = value;
    });
  }

  late final _$isShowCardsAtom = Atom(
    name: '_HomeCardsState.isShowCards',
    context: context,
  );

  @override
  bool get isShowCards {
    _$isShowCardsAtom.reportRead();
    return super.isShowCards;
  }

  @override
  set isShowCards(bool value) {
    _$isShowCardsAtom.reportWrite(value, super.isShowCards, () {
      super.isShowCards = value;
    });
  }

  late final _$_HomeCardsStateActionController = ActionController(
    name: '_HomeCardsState',
    context: context,
  );

  @override
  void navigateNewCardAddScreen(BuildContext context) {
    final _$actionInfo = _$_HomeCardsStateActionController.startAction(
      name: '_HomeCardsState.navigateNewCardAddScreen',
    );
    try {
      return super.navigateNewCardAddScreen(context);
    } finally {
      _$_HomeCardsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navigateEditAccountScreen(BuildContext context) {
    final _$actionInfo = _$_HomeCardsStateActionController.startAction(
      name: '_HomeCardsState.navigateEditAccountScreen',
    );
    try {
      return super.navigateEditAccountScreen(context);
    } finally {
      _$_HomeCardsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardsList: ${cardsList},
isShowCards: ${isShowCards},
cardCount: ${cardCount}
    ''';
  }
}
