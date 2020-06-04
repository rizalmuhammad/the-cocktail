import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/widget/atoms/image.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:flutter/material.dart';

class DetailDrinks extends StatelessWidget {

  const DetailDrinks.cocktail({this.drinks});

  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drinks.length,
      itemBuilder: (context, index){
        return Column(
          children: <Widget>[
            ImageHolder(image: drinks[index].strDrinkThumb, imageHeight: 300.0,),
            AtomText.header(drinks[index].strDrink),
            AtomText.description(drinks[index].strAlcoholic),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    AtomText(drinks[index].strCategory),
                    AtomText(drinks[index].strAlcoholic),
                  ],
                ),
                Column(
                  children: <Widget>[
                    // AtomText(drinks[index].strIba),
                    (drinks[index].strIba == null) ? AtomText("No description") : AtomText(drinks[index].strIba),
                    AtomText(drinks[index].strGlass)
                  ],
                )
              ],
            )
          ],
        );
      },
    );
  }
}