import 'package:flutter/material.dart';

extension TextExt on Text {
  Widget withPadding() => Padding(
    padding: EdgeInsets.all(5.0),
    child: this,
  );
}
