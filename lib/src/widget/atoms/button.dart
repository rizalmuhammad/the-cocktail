import 'package:flutter/material.dart';

class AtomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const AtomButton.categories({this.onPressed, this.title});

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