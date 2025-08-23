// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TransactionsState on _TransactionsState, Store {
  Computed<TextEditingController>? _$dateControllerComputed;

  @override
  TextEditingController get dateController =>
      (_$dateControllerComputed ??= Computed<TextEditingController>(
        () => super.dateController,
        name: '_TransactionsState.dateController',
      )).value;
  Computed<FormTransactionsDTO>? _$_formComputed;

  @override
  FormTransactionsDTO get _form =>
      (_$_formComputed ??= Computed<FormTransactionsDTO>(
        () => super._form,
        name: '_TransactionsState._form',
      )).value;
  Computed<String>? _$transactionConvertedNameComputed;

  @override
  String get transactionConvertedName =>
      (_$transactionConvertedNameComputed ??= Computed<String>(
        () => super.transactionConvertedName,
        name: '_TransactionsState.transactionConvertedName',
      )).value;
  Computed<double>? _$amountComputed;

  @override
  double get amount => (_$amountComputed ??= Computed<double>(
    () => super.amount,
    name: '_TransactionsState.amount',
  )).value;
  Computed<String?>? _$categoryComputed;

  @override
  String? get category => (_$categoryComputed ??= Computed<String?>(
    () => super.category,
    name: '_TransactionsState.category',
  )).value;
  Computed<String>? _$cardIdComputed;

  @override
  String get cardId => (_$cardIdComputed ??= Computed<String>(
    () => super.cardId,
    name: '_TransactionsState.cardId',
  )).value;
  Computed<String?>? _$commentComputed;

  @override
  String? get comment => (_$commentComputed ??= Computed<String?>(
    () => super.comment,
    name: '_TransactionsState.comment',
  )).value;
  Computed<String?>? _$reminderComputed;

  @override
  String? get reminder => (_$reminderComputed ??= Computed<String?>(
    () => super.reminder,
    name: '_TransactionsState.reminder',
  )).value;
  Computed<bool>? _$repeatOperationComputed;

  @override
  bool get repeatOperation => (_$repeatOperationComputed ??= Computed<bool>(
    () => super.repeatOperation,
    name: '_TransactionsState.repeatOperation',
  )).value;
  Computed<bool>? _$notificationComputed;

  @override
  bool get notification => (_$notificationComputed ??= Computed<bool>(
    () => super.notification,
    name: '_TransactionsState.notification',
  )).value;
  Computed<bool>? _$hasIncomeComputed;

  @override
  bool get hasIncome => (_$hasIncomeComputed ??= Computed<bool>(
    () => super.hasIncome,
    name: '_TransactionsState.hasIncome',
  )).value;
  Computed<List<DropdownMenuEntry<String>>>? _$categoriesComputed;

  @override
  List<DropdownMenuEntry<String>> get categories =>
      (_$categoriesComputed ??= Computed<List<DropdownMenuEntry<String>>>(
        () => super.categories,
        name: '_TransactionsState.categories',
      )).value;
  Computed<String?>? _$initialCategoryComputed;

  @override
  String? get initialCategory =>
      (_$initialCategoryComputed ??= Computed<String?>(
        () => super.initialCategory,
        name: '_TransactionsState.initialCategory',
      )).value;
  Computed<List<DropdownMenuEntry<String>>>? _$cardsListComputed;

  @override
  List<DropdownMenuEntry<String>> get cardsList =>
      (_$cardsListComputed ??= Computed<List<DropdownMenuEntry<String>>>(
        () => super.cardsList,
        name: '_TransactionsState.cardsList',
      )).value;
  Computed<WidgetStateProperty<Icon?>>? _$repeatOperationIconComputed;

  @override
  WidgetStateProperty<Icon?> get repeatOperationIcon =>
      (_$repeatOperationIconComputed ??= Computed<WidgetStateProperty<Icon?>>(
        () => super.repeatOperationIcon,
        name: '_TransactionsState.repeatOperationIcon',
      )).value;
  Computed<WidgetStateProperty<Icon?>>? _$notificationIconComputed;

  @override
  WidgetStateProperty<Icon?> get notificationIcon =>
      (_$notificationIconComputed ??= Computed<WidgetStateProperty<Icon?>>(
        () => super.notificationIcon,
        name: '_TransactionsState.notificationIcon',
      )).value;

  late final _$transactionNameAtom = Atom(
    name: '_TransactionsState.transactionName',
    context: context,
  );

  @override
  TransactionNameEnum get transactionName {
    _$transactionNameAtom.reportRead();
    return super.transactionName;
  }

  @override
  set transactionName(TransactionNameEnum value) {
    _$transactionNameAtom.reportWrite(value, super.transactionName, () {
      super.transactionName = value;
    });
  }

  late final _$_TransactionsStateActionController = ActionController(
    name: '_TransactionsState',
    context: context,
  );

  @override
  void changeAmount(String value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeAmount',
    );
    try {
      return super.changeAmount(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCategory(String value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeCategory',
    );
    try {
      return super.changeCategory(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void completeEditingAmount() {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.completeEditingAmount',
    );
    try {
      return super.completeEditingAmount();
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCard(String value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeCard',
    );
    try {
      return super.changeCard(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDate(String value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeDate',
    );
    try {
      return super.changeDate(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeComment(String value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeComment',
    );
    try {
      return super.changeComment(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeRepeatOperation(bool value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeRepeatOperation',
    );
    try {
      return super.changeRepeatOperation(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNotification(bool value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeNotification',
    );
    try {
      return super.changeNotification(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeReminder(String value) {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.changeReminder',
    );
    try {
      return super.changeReminder(value);
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void focusAmountField() {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.focusAmountField',
    );
    try {
      return super.focusAmountField();
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unfocusAmountField() {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.unfocusAmountField',
    );
    try {
      return super.unfocusAmountField();
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void openQrCode() {
    final _$actionInfo = _$_TransactionsStateActionController.startAction(
      name: '_TransactionsState.openQrCode',
    );
    try {
      return super.openQrCode();
    } finally {
      _$_TransactionsStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
transactionName: ${transactionName},
dateController: ${dateController},
transactionConvertedName: ${transactionConvertedName},
amount: ${amount},
category: ${category},
cardId: ${cardId},
comment: ${comment},
reminder: ${reminder},
repeatOperation: ${repeatOperation},
notification: ${notification},
hasIncome: ${hasIncome},
categories: ${categories},
initialCategory: ${initialCategory},
cardsList: ${cardsList},
repeatOperationIcon: ${repeatOperationIcon},
notificationIcon: ${notificationIcon}
    ''';
  }
}
