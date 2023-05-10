import 'package:strategy/move_strategy.dart';

class Voar implements MoveStrategy {
  @override
  call() {
    print('Eu voo');
  }
}
