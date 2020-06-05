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
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ImageHolder(
              image: drinks[index].strDrinkThumb,
              imageHeight: 300.0,
            ),
            AtomText.header(drinks[index].strDrink),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: AtomText("Category: "+drinks[index].strCategory)),
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: AtomText("Alcoholic: "+drinks[index].strAlcoholic)),
                    ],
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: AtomText("Ingredients:")),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: drinks[index].lstIngredients.length,
                    itemBuilder: (context, i) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            (drinks[index].lstIngredients[i].ingredientM == null) ? AtomText("") : AtomText.description(
                                drinks[index].lstIngredients[i].ingredientM),
                                (drinks[index].lstIngredients[i].measureM == null) ? AtomText("") : AtomText.description(
                                drinks[index].lstIngredients[i].measureM),
                          ],
                        ),
                      );
                    }),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: AtomText("Instructions:")),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: (drinks[index].strInstructions == null)
                        ? AtomText("")
                        : AtomText.description(drinks[index].strInstructions)),
              ],
            ),
          ],
        );
      },
    );
  }
}
