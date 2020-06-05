import 'package:cocktailapp/src/bloc/cocktail_detail_drink_bloc.dart';
import 'package:cocktailapp/src/widget/atoms/text.dart';
import 'package:cocktailapp/src/widget/organisms/detail_drink.dart';
import 'package:flutter/material.dart';

class DetailDrinkPage extends StatefulWidget {

  final String idDrink;
  final String title;
  DetailDrinkPage({this.idDrink, this.title});

  @override
  _DetailDrinkPageState createState() => _DetailDrinkPageState();
}

class _DetailDrinkPageState extends State<DetailDrinkPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detail.fetchDetailDrink(widget.idDrink);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    detail.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Container(
          width: MediaQuery.of(context).size.width*1,
          child: _buildDetailDrink(),
        ),
    );
  }

  Widget _buildDetailDrink(){
    return StreamBuilder(
      stream: detail.detailDrink,
      builder: ((context, snapshot){
        if (snapshot.hasData) {
          return DetailDrinks.cocktail(drinks: snapshot.data,);
        } else if(snapshot.hasError){
          return AtomText(snapshot.error.toString());
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      })
    );
  }
}