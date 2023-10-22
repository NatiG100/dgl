import 'dart:math' as math;

class Location {
  int _x;
  int _y;
  Location([int x = 0, int y = 0])
      : _x = x,
        _y = y;

  int get xLoc => _x;
  int get yLoc => _y;

  set x(int x) => _x = x;
  set y(int y) => _y = y;

  Location operator +(Location otherLocation) {
    return Location(_x + otherLocation.xLoc, _y + otherLocation.yLoc);
  }

  Location operator -(Location otherLocation) {
    return Location(_x - otherLocation.xLoc, _y - otherLocation.yLoc);
  }

  double distanceFrom(Location otherLocation) {
    return math.sqrt(math.pow((_x - otherLocation.xLoc), 2) +
        math.pow((_y - otherLocation.yLoc), 2));
  }

  double get magnitude => math.sqrt(math.pow(xLoc, 2) + math.pow(yLoc, 2));

  @override
  String toString() {
    return '(x: $xLoc, y: $yLoc)';
  }
}
