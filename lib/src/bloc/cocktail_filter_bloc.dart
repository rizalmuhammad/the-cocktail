import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class CocktailFilterBloc {
  final _repository = Repository();
  final _filterCategory = PublishSubject<List<Drink>>();

  Stream<List<Drink>> get filterCategory => _filterCategory.stream;

  fetchAllFilter(String strDrink) async{
    List<Drink> category = await _repository.filterByCategories(strDrink);
    _filterCategory.sink.add(category);
  }

  @mustCallSuper
  void dispose() async{
    await _filterCategory?.drain();
    _filterCategory?.close(); 
  }
}

final filter = CocktailFilterBloc();