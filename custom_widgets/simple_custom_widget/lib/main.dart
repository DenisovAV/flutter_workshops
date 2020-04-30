import 'package:flutter/material.dart';
import 'package:simplecustomwidget/custom_button.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Custom Widget Demo',
      home: MainPage(title: 'Simple Custom Widget Demo'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is a button'),
            CustomButton(
                title: 'Press Custom Button',
                onPressed: () => setState(
                      () => counter++,
                    )),
            SizedBox(
              height: 10.0,
            ),
            Text('$counter')
          ],
        ),
      ),
    );
  }
}
