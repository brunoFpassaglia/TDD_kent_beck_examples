import 'package:tdd_multi_moedas/expression.dart';
import 'package:tdd_multi_moedas/money.dart';

class Sum implements Expression {
  Money augend;
  Money addend;

  Sum(this.augend, this.addend);

  Money reduce(String to) {
    int amount = augend.amount + addend.amount;
    return Money(amount, to);
  }
}
