import 'package:cocktailapp/src/widget/atoms/image.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {

  CardItem({this.url, this.title = ''});

  final String url, title;

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              padding: EdgeInsets.only(bottom: 10),
              child: ImageHolder(image: widget.url, imageHeight: 100.0),
            ),
            Container(margin: EdgeInsets.only(bottom: 5), child: AtomText.description(widget.title))
          ],
        ),
      ),
    );
  }
}