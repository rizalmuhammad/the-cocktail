import 'package:cocktailapp/src/bloc/cocktail_alcoholic_bloc.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/organisms/list_alcoholics.dart';
import 'package:cocktailapp/src/widget/organisms/list_category.dart';
import 'package:cocktailapp/src/widget/organisms/list_ingredient.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    cocktails.fetchAllAlcoholics();
  }

  @override
  void dispose() {
    super.dispose();
    cocktails.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            _buildListCategory(),
            _buildListAlcohol(),
            _buildListIngredient(),
          ],
        )));
  }

  Widget _buildListCategory() {
    return StreamBuilder(
        stream: cocktails.allCategories,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                        child: AtomText.header("Filter by Categories")),
                    Expanded(
                      child: ListCategory.categories(
                        drinks: snapshot.data,
                      ),
                    ),
                  ],
                ));
          } else if (snapshot.hasError) {
            return AtomText(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }));
  }

  Widget _buildListAlcohol() {
    return StreamBuilder(
        stream: cocktails.allAlcoholics,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                        child: AtomText.header("Filter by Alcoholic")),
                    Expanded(
                      child: ListAlcoholic.alcoholics(
                        drinks: snapshot.data,
                      ),
                    ),
                  ],
                ));
          } else if (snapshot.hasError) {
            return AtomText(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }));
  }

  Widget _buildListIngredient() {
    return StreamBuilder(
        stream: cocktails.allIngredients,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                        child: AtomText.header("Filter by Ingredients")),
                    Expanded(
                        child:
                            ListIngredient.ingredient(drinks: snapshot.data)),
                  ],
                ));
          } else if (snapshot.hasError) {
            return AtomText(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }));
  }
}
