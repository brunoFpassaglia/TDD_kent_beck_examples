import 'package:tdd_multi_moedas/dollar.dart';
import 'package:tdd_multi_moedas/expression.dart';

import 'franc.dart';

class Money implements Expression {
  int amount;
  String currency;

  Money._(this.amount, this.currency);

  factory Money.dollar(int amount) {
    return Money._(amount, 'USD');
  }

  factory Money.franc(int amount) {
    return Money._(amount, 'CHF');
  }

  String get getCurrency => currency;

  Money times(int multiplier) {
    return Money._(amount * multiplier, currency);
  }

  Expression plus(Money addend) {
    return Money._(amount + addend.amount, currency);
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
