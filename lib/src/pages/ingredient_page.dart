import 'package:cocktailapp/src/bloc/cocktail_filter_bloc.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/organisms/gridview_category.dart';
import 'package:flutter/material.dart';

class IngredientsPage extends StatefulWidget {

  final String strIngredient;

  IngredientsPage({this.strIngredient});

  @override
  _IngredientsPageState createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filter.fetchFilterIngredient(widget.strIngredient);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    filter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter by Ingredients"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(child: _buildFilterIngredient(),),
    );
  }

  Widget _buildFilterIngredient(){
    return StreamBuilder(
      stream: filter.filterIngredient,
      builder: ((context, snapshot){
        if (snapshot.hasData) {
          return Center(child: FilterCategory.categories(drinks: snapshot.data,));
        } else if (snapshot.hasError) {
          return AtomText(snapshot.error.toString());
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      })
    );
  }
}