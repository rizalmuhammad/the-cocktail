import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/pages/category_page.dart';
import 'package:cocktailapp/src/widget/atoms/button.dart';
import 'package:flutter/material.dart';

//ListView to show List Drinks based on Category

class ListCategory extends StatelessWidget {
  const ListCategory.categories({this.drinks});

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
              title: drinks[index].strCategory,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryPage(strCategory: drinks[index].strCategory,)));
              },
            ));
      },
    );
  }

  void error() {
    print("object");
  }
}
