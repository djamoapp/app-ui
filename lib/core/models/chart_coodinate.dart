import 'dart:ui';

class ChartCoordinates<X, Y> {
  final X x;
  final Y y;
  final Color? color;

  ChartCoordinates(this.x, this.y, {this.color});
}
