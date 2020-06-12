import 'dart:async';
import 'package:rxdart/rxdart.dart';

class StreamService {

  final _controller = StreamController<String>();
  //final _controller = StreamController<String>.broadcast();
  //final _controller = BehaviorSubject<String>();
  //final _controller = ReplaySubject<String>();
  //final _controller = ReplaySubject<List<String>>();

  Stream<String> get stream => _controller.stream;

  final _carList = [
    'Mercedes',
    'Ford',
    'Lexus',
    'Ferrari',
  ];

  final _planeList = [
    'Boeing',
    'Airbus',
    'TU154',
  ];


  StreamService(){
    _load();
  }

  void _load() async {
    //var list=<String>[];
    for(var elem in [..._carList, ..._planeList]) {
      await Future.delayed(Duration(seconds: 2));
      _controller.add(elem);
      //list.add(elem);
      //_controller.add(list);
    }
  }
}
