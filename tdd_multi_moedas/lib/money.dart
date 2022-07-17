import 'package:tdd_multi_moedas/dollar.dart';

import 'franc.dart';

class Money {
  int amount;
  String currency;

  Money(this.amount, this.currency);

  factory Money.dollar(int amount) {
    return Money(amount, 'USD');
  }

  factory Money.franc(int amount) {
    return Money(amount, 'CHF');
  }

  String get getCurrency => currency;

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  bool equals(Object obj) {
    Money money = obj as Money;
    return amount == money.amount && getCurrency == money.getCurrency;
  }

  @override
  bool operator ==(Object obj) {
    Money money = obj as Money;
    return amount == money.amount && getCurrency == money.getCurrency;
  }

  @override
  String toString() {
    return "$amount $currency";
  }
}
