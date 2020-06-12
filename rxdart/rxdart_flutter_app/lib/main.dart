import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdartflutterapp/stream.dart';
import 'package:rxdartflutterapp/stream_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RxDart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'RxDart Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stream<String> _stream = StreamService().stream;
  /*Stream<String> _stream;

  @override
  void initState() {
    Stream<String> _stream1 = Stream.periodic(Duration(seconds: 3), (i)=>'first stream $i');
    Stream<String> _stream2 = Stream.periodic(Duration(seconds: 5), (i)=>'second stream $i');
    _stream = MergeStream([_stream1, _stream2]);
    _stream = ConcatStream([_stream1, _stream2]);
    _stream = MergeStream([_stream1, _stream2]);
    _stream = ZipStream([_stream1, _stream2], (values) => values.toString());
    _stream = CombineLatestStream([_stream1, _stream2], (values) => values.toString());
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamView(stream: _stream),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Child screen'),
                    ),
                    body: StreamView(stream: _stream)))),
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
