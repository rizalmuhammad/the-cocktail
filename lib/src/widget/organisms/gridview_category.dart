import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/widget/molecules/card_item.dart';
import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {

  const FilterCategory.categories({this.drinks});

  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drinks.length,
      itemBuilder: (context, index){
        return CardItem(title: drinks[index].strDrink, url: drinks[index].strDrinkThumb+"/preview",);
      }
    );
  }
}