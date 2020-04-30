import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;

  CustomButton({this.onPressed, this.title});

  @override
  State createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  var isButtonColored = false;

  @override
  Widget build(BuildContext context) => FlatButton(
        child: Text(widget.title ?? 'Button'),
        color: isButtonColored ? Colors.red : Colors.black54,
        onPressed: () {
          if (widget.onPressed != null) {
            widget.onPressed();
          }
          setState(() => isButtonColored = !isButtonColored);
        },
      );
}
