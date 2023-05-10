import 'package:strategy/make_sound_strategy.dart';

class Latir implements MakeSoundStrategy {
  @override
  call() {
    print('Au au au');
  }
}
