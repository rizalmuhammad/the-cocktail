import 'package:flutter/material.dart';

class AtomText extends StatelessWidget {
  
  const AtomText(this.title,
    {this.textAlign = TextAlign.left,
    this.color = Colors.black,
    this.size = 12.0}) : assert(textAlign != null);
  
  const AtomText.description(this.title,
    {this.textAlign = TextAlign.left,
    this.color = Colors.black,
    this.size = 10.0}) : assert(textAlign != null);
  
  const AtomText.header(this.title,
    {this.textAlign = TextAlign.left,
    this.color = Colors.black,
    this.size = 18.0}) : assert(textAlign != null);

 final String title;
 final TextAlign textAlign;
 final Color color;
 final double size;

 @override
 Widget build(BuildContext context){
   return Text(title,
   textAlign: textAlign,
   style: TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),);
 }
}