import 'dart:async';

import 'package:flutter/material.dart';

class StreamView extends StatefulWidget {
  StreamView({Key key, this.stream}) : super(key: key);

  final Stream<String> stream;

  @override
  _StreamViewState createState() => _StreamViewState();
}

//State with StreamBuilder<String>
class _StreamViewState extends State<StreamView> {
  var _items = <String>[];

  @override
  Widget build(BuildContext context) => StreamBuilder(
        stream: widget.stream,
        builder: (context, snapshot) => snapshot.hasData
            ? ListView(children: [
                ...(_items..add(snapshot.data)).map((e) => Text(
                      e,
                      style: TextStyle(fontSize: 20.0),
                    ))
              ])
            : Center(
                child: Text(
                'No Data',
                style: TextStyle(fontSize: 20.0),
              )),
      );
}

//State without StreamBuilder<String>
/*class _StreamViewState extends State<StreamView> {
  var _items = <String>[];
  StreamSubscription _subscription;


  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen((event)=>setState(()=>_items.add(event)));
  }

  @override
  Widget build(BuildContext context) => _items.isNotEmpty
        ? ListView(children: [
      ...(_items).map((e) => Text(
        e,
        style: TextStyle(fontSize: 20.0),
      ))
    ])
        : Center(
        child: Text(
          'No Data',
          style: TextStyle(fontSize: 20.0),
        ));

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}*/

//State with StreamBuilder<List<String>>
/*class _StreamViewState extends State<StreamView> {
  var _items = <String>[];

  @override
  Widget build(BuildContext context) => StreamBuilder(
    stream: widget.stream,
    builder: (context, snapshot) => snapshot.hasData
        ? ListView(children: [
      ...(snapshot.data).map((e) => Text(
        e,
        style: TextStyle(fontSize: 20.0),
      ))
    ])
        : Center(
        child: Text(
          'No Data',
          style: TextStyle(fontSize: 20.0),
        )),
  );
}*/
