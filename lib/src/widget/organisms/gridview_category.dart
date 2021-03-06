import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/pages/detail_drink_page.dart';
import 'package:cocktailapp/src/widget/molecules/card_item.dart';
import 'package:flutter/material.dart';

// ListView to show List of Drinks based on Category

class FilterCategory extends StatelessWidget {
  const FilterCategory.categories({this.drinks});

  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDrinkPage(idDrink: drinks[index].idDrink, title: drinks[index].strDrink,)));
              },
                child: CardItem(
              title: drinks[index].strDrink,
              url: drinks[index].strDrinkThumb + "/preview",
            ));
          }),
    );
  }
}
