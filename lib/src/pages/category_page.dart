import 'package:cocktailapp/src/bloc/cocktail_filter_bloc.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/organisms/gridview_category.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {

  final String strCategory;

  CategoryPage({this.strCategory});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override
  void initState() {
    super.initState();
    filter.fetchAllFilter(widget.strCategory);
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
        title: Text("Filter by Category"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(height: MediaQuery.of(context).size.height*1,width: 100, child: _buildFilterCategory())
      ),
    );
  }

  Widget _buildFilterCategory(){
    return StreamBuilder(
      stream: filter.filterCategory,
      builder: ((context, snapshot){
        if (snapshot.hasData) {
          return FilterCategory.categories(drinks: snapshot.data,);
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