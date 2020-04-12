import 'package:custompainterdemo/painter.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Paint Widget Demo',
      home: MainPage(title: 'Custom Paint Widget Demo'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var isNice = true;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomPaint(
            size: Size(200, 200),
            painter: SmilePainter(isNice: isNice),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            child: Text('Change Mood'),
            onPressed: () => setState(() => isNice = !isNice),
            color: Colors.black12,
          )
        ])));
  }
}
