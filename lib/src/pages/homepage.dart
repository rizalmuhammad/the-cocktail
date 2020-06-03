import 'package:cocktailapp/src/widget/atoms/image.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/molecules/card_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          AtomText('Ini Text Atom'),
          AtomText.description('Ini Atom Text Description'),
          AtomText.header('Ini header'),
          // ImageHolder(image: 'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg', imageHeight: 50.0,),
          // ImageHolder(imageHeight: 50.0,),
          CardItem(title: 'Ini Gambar', url: 'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg',)
        ],
      ),
    );
  }
}
