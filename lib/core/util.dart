class Util {
  static num clamp(num value, num min, max) => value > max
      ? max
      : value < min
          ? min
          : value;
  static bool isBetween(num val, num min, num max) => val >= min && val <= max;
}
