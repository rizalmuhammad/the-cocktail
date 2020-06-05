
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:flutter/material.dart';

// Implement atomic design for Image

class ImageHolder extends StatelessWidget {
  final image;
  final imageHeight;
  ImageHolder({this.image, this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight,
      child: image != null
          ? Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                    ),
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
