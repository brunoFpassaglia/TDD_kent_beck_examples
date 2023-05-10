import 'package:strategy/move_strategy.dart';

class Andar implements MoveStrategy {
  @override
  call() {
    print('Eu ando');
  }
}
