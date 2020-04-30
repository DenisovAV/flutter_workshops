class Car {
  final double mileage;
  final int age;

  Car({this.mileage, this.age});
}

class CarService {
  List<Car> getCars() => [Car(mileage: 10000, age: 5), Car(mileage: 15000, age: 3)];
}
