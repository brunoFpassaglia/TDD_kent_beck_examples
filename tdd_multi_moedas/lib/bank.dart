import 'package:tdd_multi_moedas/expression.dart';
import 'package:tdd_multi_moedas/money.dart';
import 'package:tdd_multi_moedas/sum.dart';

class Bank {
  Money reduce(Expression source, String to) {
    // if (source is Money) return source.reduce(to);
    // Sum sum = source as Sum;
    // int amount = sum.augend.amount + sum.addend.amount;
    // return Money(amount, to);
    return source.reduce(this, to);
  }

  int rate(String from, String to) {
    return from == 'CHF' && to == 'USD' ? 2 : 1;
  }
}
