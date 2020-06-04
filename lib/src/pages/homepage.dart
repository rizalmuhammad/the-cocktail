import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/widget/atoms/image.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/molecules/card_item.dart';
import 'package:cocktailapp/src/widget/organisms/list_category.dart';
import 'package:flutter/material.dart';
import 'package:cocktailapp/src/bloc/cocktail_categories_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.fetchAllCategories();
  }

  @override
  void dispose(){
    super.dispose();
    bloc.dispose();
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
              child: StreamBuilder(
          stream: bloc.allCategories,
          builder: ((context, snapshot){
            if (snapshot.hasData) {
              return Column(
                children: <Widget>[
                  _buildList(snapshot),
                  _buildList(snapshot),
                  _buildList(snapshot),
                ],
              );
            } else if (snapshot.hasError) {
              return AtomText(snapshot.error.toString());
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          })
        ),
      )
    );
  }

  Widget _buildList(AsyncSnapshot<List<Drink>> snapshot){
    return Container(width: MediaQuery.of(context).size.width*1, height: 100, child: ListCategory(drinks: snapshot.data,));
  }
}
