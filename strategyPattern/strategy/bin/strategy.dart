import 'package:strategy/andar.dart';
import 'package:strategy/animal.dart';
import 'package:strategy/cachorro.dart';
import 'package:strategy/gato.dart';
import 'package:strategy/latir.dart';
import 'package:strategy/miar.dart';
import 'package:strategy/mugir.dart';
import 'package:strategy/vaca.dart';

void main() {
  var animais = [
    Cachorro(makeSoundStrategy: Latir(), moveStrategy: Andar()),
    Gato(makeSoundStrategy: Miar(), moveStrategy: Andar()),
    Vaca(makeSoundStrategy: Mugir(), moveStrategy: Andar()),
  ];

  animais.forEach((animal) {
    print(animal.runtimeType);
    animal.makeSoundStrategy();
    animal.moveStrategy();
    print('ganhando asas!!!');
    animal.darAsas();
    animal.moveStrategy();
    print('-------------------');
  });
}
