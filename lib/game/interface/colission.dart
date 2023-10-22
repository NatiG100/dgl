import 'package:practice/game/sprite/sprite.dart';

abstract class Collidable {
  bool testColission(Sprite otherSprite);
}
