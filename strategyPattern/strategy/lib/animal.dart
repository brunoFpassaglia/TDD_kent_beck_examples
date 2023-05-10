import 'package:strategy/make_sound_strategy.dart';
import 'package:strategy/move_strategy.dart';
import 'package:strategy/voar.dart';

abstract class Animal {
  final MakeSoundStrategy makeSoundStrategy;
  MoveStrategy moveStrategy;

  Animal({
    required this.makeSoundStrategy,
    required this.moveStrategy,
  });

  darAsas() {
    moveStrategy = Voar();
  }
}
