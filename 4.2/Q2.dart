import 'dart:io';
class Distance {
  double? feet;
  double? inch;
  void setDistance(int inches) {
    feet = inches / 12;
    inch = inches % 12;

    if (inch > 12) {
      feet = feet + 1;
      inch = inch % 12;
    }

    print("Feet: $feet , Inch: $inch");
  }
}

void main() {
  Distance d = Distance();
  d.setDistance(13);
}