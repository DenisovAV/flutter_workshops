import 'package:dartextension/car_serivice.dart';

extension CarExtension on Car {
  static const _k = 0.621371;
  double getKmMileage() => _k * this.mileage;
}

extension OneMoreCarExtension on Car {
  static const _k = 0.7;
  double getKmMileage() => _k * this.mileage;
}
