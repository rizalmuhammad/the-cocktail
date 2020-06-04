import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/pages/category_page.dart';
import 'package:cocktailapp/src/widget/atoms/button.dart';
import 'package:flutter/material.dart';

class ListIngredient extends StatelessWidget {
  const ListIngredient.ingredient({this.drinks});

  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: drinks.length,
      itemBuilder: (context, index) {
        return Container(
            padding: EdgeInsets.all(10),
            child: AtomButton.categories(
              title: drinks[index].strIngredient1,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()));
              },
            )
        );
      },
    );
  }

  void error() {
    print("object");
  }
}
