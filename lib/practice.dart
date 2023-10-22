import 'package:practice/physics/location.dart';

void main() {
  var location = Location(100, 50);
  print(location);
  location = location + Location(40, 40);
  print(location);
  location = location - Location(40, 40);
  print(location);
  print(location.distanceFrom(Location(0, 0)));
  print(location.magnitude);
}
