import 'package:flutter/material.dart';

class AtomButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final String index;

  const AtomButton.categories({this.onPressed, this.title, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: FlatButton(
        onPressed: onPressed,
        color: Colors.greenAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.blue),),
      ),
    );
  }
}