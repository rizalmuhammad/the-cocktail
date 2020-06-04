import 'dart:async';
import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/cocktail_provider.dart';

class Repository{
  final CocktailApiProvider _cocktailApiProvider = CocktailApiProvider();

  Future<List<Drink>> getListAlcoholics() => _cocktailApiProvider.getListAlcoholics();
  Future<List<Drink>> getListIngredients() => _cocktailApiProvider.getListIngredients();
  Future<List<Drink>> getListCategories() => _cocktailApiProvider.getListCategories();
  Future<List<Drink>> filterByCategories(String strDrink) => _cocktailApiProvider.filterByCategories(strDrink: strDrink);
  Future<List<Drink>> filterByAlcoholics() => _cocktailApiProvider.filterByAlcoholics();
  Future<List<Drink>> filterByIngredients() => _cocktailApiProvider.filterByIngredients();
  Future<List<Drink>> detailDrink(String idDrink) => _cocktailApiProvider.detailDrink(idDrink: idDrink);
}