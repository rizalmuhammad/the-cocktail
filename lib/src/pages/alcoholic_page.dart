import 'package:cocktailapp/src/bloc/cocktail_filter_bloc.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/organisms/gridview_category.dart';
import 'package:flutter/material.dart';

class AlcoholicPage extends StatefulWidget {

  final String strAlcoholic;

  AlcoholicPage({this.strAlcoholic});

  @override
  _AlcoholicPageState createState() => _AlcoholicPageState();
}

class _AlcoholicPageState extends State<AlcoholicPage> {

  @override
  void initState() {
    super.initState();
    filter.fetchFilterAlcohol(widget.strAlcoholic);
  }

  @override
  void dispose() {
    super.dispose();
    filter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter by Alcoholic"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: _buildFilterAlcoholic(),
      ),
    );
  }

  Widget _buildFilterAlcoholic(){
    return StreamBuilder(
      stream: filter.filterAlcohol,
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