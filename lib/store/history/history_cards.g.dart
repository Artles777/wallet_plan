// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_cards.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HistoryCardsState on _HistoryCardsState, Store {
  late final _$cardsListAtom = Atom(
    name: '_HistoryCardsState.cardsList',
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

  @override
  String toString() {
    return '''
cardsList: ${cardsList}
    ''';
  }
}
