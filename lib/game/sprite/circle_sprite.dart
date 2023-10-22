import 'package:practice/game/interface/colission.dart';
import 'package:practice/game/interface/renderable.dart';
import 'package:practice/game/sprite/sprite.dart';
import 'package:practice/physics/dimension.dart';
import 'package:practice/physics/location.dart';
import 'package:practice/physics/rectangle.dart';

class CircleSprite extends Sprite implements Renderable, Collidable {
  CircleSprite(
      {required super.location, required this.radius, required super.color});
  int radius;
  Rectangle get boundRectangle {
    return Rectangle(
      location: location - Location(radius, radius),
      dimension: Dimension(radius * 2, radius * 2),
    );
  }

  @override
  void render(Object graphicsCtx) {
    // TODO: implement render
  }

  @override
  bool testColission(Sprite otherSprite) {
    // TODO: implement testColission
    throw UnimplementedError();
  }
}
