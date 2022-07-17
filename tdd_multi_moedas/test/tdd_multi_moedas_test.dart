import 'package:tdd_multi_moedas/franc.dart';
import 'package:tdd_multi_moedas/money.dart';
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
}