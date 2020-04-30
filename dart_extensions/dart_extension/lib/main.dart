import 'package:dartextension/car_serivice.dart';
import 'package:dartextension/car_extensions.dart' hide OneMoreCarExtension;
import 'package:dartextension/widget_extensions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: CarService()
                    .getCars()
                    .map((car) => Text(
                          'Mileage: ${car.getKmMileage()} Age: ${car.age}',
                          style: TextStyle(fontSize: 20.0),
                        ).withPadding())
                    .toList())),
      );
}
