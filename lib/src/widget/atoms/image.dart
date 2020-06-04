import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:flutter/material.dart';

class ImageHolder extends StatelessWidget {
  final image;
  final imageHeight;
  ImageHolder({this.image, this.imageHeight});

  @override
  Widget build(BuildContext context) {
    // final imgsrc = "https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg";
    return Container(
      height: imageHeight,
      child: image != null
          ? Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
            )
          : Container(
              color: Colors.grey[200],
              height: 100,
              width: 100,
              child: Center(child: AtomText.description('No Image')),
            ),
    );
  }
}
