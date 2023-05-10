import 'dart:io';

import 'package:tdd_multi_moedas/bank.dart';
import 'package:tdd_multi_moedas/expression.dart';
import 'package:tdd_multi_moedas/franc.dart';
import 'package:tdd_multi_moedas/money.dart';
import 'package:tdd_multi_moedas/sum.dart';
import 'package:test/test.dart';

void main() {
  test('Teste multiplicacao com Money.dollars', () {
    Money five = Money.dollar(5);
    expect(Money.dollar(10), five.times(2));
    expect(five.times(3), Money.dollar(15));
  });
  test('Teste de igualdade', () {
    expect(Money.dollar(5).equals(Money.dollar(5)), true);
    expect(Money.dollar(5).equals(Money.dollar(6)), false);
    expect(Money.dollar(5) == Money.dollar(5), true);
    expect(Money.dollar(5) == Money.dollar(6), false);
    expect(Money.franc(5) == Money.dollar(5), false);
    expect(Money.franc(5).equals(Money.dollar(5)), false);
  });

  test('Teste moedas', () {
    expect(Money.dollar(1).currency, "USD");
    expect(Money.franc(1).currency, "CHF");
  });

  test('Teste de adicao', () {
    // Money sum = Money.dollar(5).plus(Money.dollar(5));
    // expect(sum, Money.dollar(10));
    Money five = Money.dollar(5);
    Expression sum = five.plus(five);
    Bank bank = Bank();
    Money reduced = bank.reduce(sum, 'USD');
    expect(Money.dollar(10), reduced);
  });

  test('Soma retorna uma soma', () {
    Money five = Money.dollar(5);
    Expression result = five.plus(five);
    Sum sum = result as Sum;
    expect(five, sum.augend);
    expect(five, sum.addend);
  });

  test('Reduce soma', () {
    Expression sum = Sum(Money.dollar(3), Money.dollar(4));
    Bank bank = Bank();
    Money result = bank.reduce(sum, 'USD');
    expect(result, Money.dollar(7));
  });

  test('Reduce moeny', () {
    Bank bank = Bank();
    Money result = bank.reduce(Money.dollar(1), 'USD');
    expect(result, Money.dollar(1));
  });

  test('Reduce money moedas diferentes', () {
    Bank bank = Bank();
    bank.addRate('CHF', 'USD', 2);
    Money result = bank.reduce(Money.franc(2), 'USD');
    expect(result, Money.dollar(1));
  });
}
