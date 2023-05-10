import 'package:strategy/move_strategy.dart';

import 'package:strategy/make_sound_strategy.dart';

import 'animal.dart';

class Cachorro extends Animal {
  Cachorro({
    makeSoundStrategy,
    moveStrategy,
  }) : super(makeSoundStrategy: makeSoundStrategy, moveStrategy: moveStrategy);
}
