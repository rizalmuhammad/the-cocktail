import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class CocktailFilterBloc {
  final _repository = Repository();
  final _filterCategory = PublishSubject<List<Drink>>();
  final _filterAlcohol = PublishSubject<List<Drink>>();
  final _filterIngredient = PublishSubject<List<Drink>>();

  Stream<List<Drink>> get filterCategory => _filterCategory.stream;
  Stream<List<Drink>> get filterAlcohol => _filterAlcohol.stream;
  Stream<List<Drink>> get filterIngredient => _filterIngredient.stream;

  fetchAllFilter(String strDrink) async{
    List<Drink> category = await _repository.filterByCategories(strDrink);
    _filterCategory.sink.add(category);
  }

  fetchFilterAlcohol(String strAlcohol) async{
    List<Drink> alcohol = await _repository.filterByAlcoholics(strAlcohol);
    _filterAlcohol.sink.add(alcohol);
  }

  fetchFilterIngredient(String strIngredient) async{
    List<Drink> ingredient = await _repository.filterByIngredients(strIngredient);
    _filterIngredient.sink.add(ingredient);
  }

  @mustCallSuper
  void dispose() async{
    await _filterCategory?.drain();
    _filterCategory?.close(); 
    await _filterAlcohol?.drain();
    _filterAlcohol?.close(); 
    await _filterIngredient?.drain();
    _filterIngredient?.close(); 
  }
}

final filter = CocktailFilterBloc();