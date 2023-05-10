import 'package:strategy/move_strategy.dart';

import 'package:strategy/make_sound_strategy.dart';

import 'animal.dart';

class Gato extends Animal {
  Gato({
    required makeSoundStrategy,
    required moveStrategy,
  }) : super(makeSoundStrategy: makeSoundStrategy, moveStrategy: moveStrategy);
}
