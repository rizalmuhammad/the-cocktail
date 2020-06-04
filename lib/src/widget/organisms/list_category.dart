import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/widget/atoms/button.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatefulWidget {
  final List<Drink> drinks;

  ListCategory({this.drinks});

  @override
  _ListCategoryState createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.drinks.length,
      itemBuilder: (context, index){
        return Container(padding: EdgeInsets.all(10), child: AtomButton.categories(onPressed: error, title: widget.drinks[index].strCategory,));
      },
    );
  }

  void error(){
    print("object");
  }
}