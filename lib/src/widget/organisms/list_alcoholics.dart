import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/pages/category_page.dart';
import 'package:cocktailapp/src/widget/atoms/button.dart';
import 'package:flutter/material.dart';

class ListAlcoholic extends StatelessWidget {
  const ListAlcoholic.alcoholics({this.drinks});

  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: drinks.length,
      itemBuilder: (context, index) {
        // final Function onPressed ()=>
        return Container(
            padding: EdgeInsets.all(10),
            child: AtomButton.categories(
              title: drinks[index].strAlcoholic,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()));
              },
            ));
      },
    );
  }

  routes() {}
}
