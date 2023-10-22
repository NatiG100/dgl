import 'package:practice/core/util.dart';

class Color {
  static const MAX_VALUE = 255;
  static const MIN_VALUE = 0;
  Color([int red = 0, int green = 0, int blue = 0])
      : _red = Util.clamp(red, MIN_VALUE, MAX_VALUE) as int,
        _green = Util.clamp(green, MIN_VALUE, MAX_VALUE) as int,
        _blue = Util.clamp(blue, MIN_VALUE, MAX_VALUE) as int;
  int _red;
  int _green;
  int _blue;

  int get red => _red;
  int get green => _green;
  int get blue => _blue;

  set red(int red) {
    if (red > 255 || red < 0) {
      throw ArgumentError("Red value must be between 0 and 255 (inclusive).");
    }
    _red = red;
  }

  set green(int green) {
    if (green > 255 || green < 0) {
      throw ArgumentError("Green value must be between 0 and 255 (inclusive).");
    }
    _green = green;
  }

  set blue(int blue) {
    if (blue > 255 || blue < 0) {
      throw ArgumentError("Blue value must be between 0 and 255 (inclusive).");
    }
    _blue = blue;
  }

  Color operator *(int val) {
    return Color(
      val * red,
      val * green,
      val * blue,
    );
  }

  Color operator +(int val) {
    return Color(
      val + red,
      val + green,
      val + blue,
    );
  }

  Color operator ~() {
    return Color(
      MAX_VALUE - red,
      MAX_VALUE - green,
      MAX_VALUE - blue,
    );
  }

  @override
  String toString() {
    return '( Red:   $red, Green: $green, Blue:  $blue)';
  }
}
