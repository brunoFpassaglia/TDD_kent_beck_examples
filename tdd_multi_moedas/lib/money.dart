import 'package:tdd_multi_moedas/dollar.dart';
import 'package:tdd_multi_moedas/expression.dart';
import 'package:tdd_multi_moedas/sum.dart';

import 'franc.dart';

class Money implements Expression {
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

  Expression plus(Money addend) {
    return Sum(this, addend);
  }

  Money reduce(String to) {
    return this;
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
