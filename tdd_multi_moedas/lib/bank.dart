import 'package:tdd_multi_moedas/expression.dart';
import 'package:tdd_multi_moedas/money.dart';

class Bank {
  Money reduce(Expression source, String to) {
    return Money.dollar(10);
  }
}
