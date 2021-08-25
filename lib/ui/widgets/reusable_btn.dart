import 'package:flutter/material.dart';

class ReusableBtn extends StatelessWidget {
  ReusableBtn({
    this.onpressed,
    this.text
  });

  final Function onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(text,
      )
    );
  }
}