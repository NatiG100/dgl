import 'package:practice/game/sprite/sprite.dart';
import 'package:practice/physics/dimension.dart';

class RectangleSprite extends Sprite {
  RectangleSprite(
      {required super.location, required this.dimension, required super.color});
  Dimension dimension;
}
