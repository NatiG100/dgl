import 'dart:math' as math;

class Dimension {
  int _height;
  int _width;
  Dimension(int height, int width)
      : _height = height > 0 ? height : 0,
        _width = width > 0 ? width : 0;

  int get height => _height;
  int get width => _width;

  set height(int height) => _height = height > 0 ? height : 0;
  set width(int width) => _width = width > 0 ? width : 0;

  String toString() {
    return '(x: $height, y: $width)';
  }
}
