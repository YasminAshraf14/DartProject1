void main() {
  // Creating instances.
  Circle circle = Circle(5.0);
  ColoredCircle coloredCircle = ColoredCircle(7.0, "Blue");

  // Using polymorphism to print details.
  printShapeDetails(circle);
  printShapeDetails(coloredCircle);
}

// Pillar 1: Encapsulation

abstract class Shape {

  double? _area;

  double? get area => _area;

  void calculateArea();

}

// Pillar 2: Inheritance

class Circle extends Shape {

  double radius;

  Circle(this.radius);

  @override
  void calculateArea() {
    _area = 3.14 * radius * radius;

    print("Calculating area for the circle: $_area");
  }

}

// Pillar 3: Abstraction

abstract class Colorful {

  void displayColor();

}

class ColoredCircle extends Circle implements Colorful {

  String color;

  ColoredCircle(double radius, this.color) : super(radius);

  @override
  void displayColor() {
    print("The color of the circle is $color.");
  }

}

// Pillar 4: Polymorphism

void printShapeDetails(Shape shape) {
  shape.calculateArea();

  if (shape is Colorful) {
    (shape as Colorful).displayColor();
  }
}
