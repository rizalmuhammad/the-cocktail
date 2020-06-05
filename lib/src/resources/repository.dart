import 'dart:async';
import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/cocktail_provider.dart';

class Repository{
  final CocktailApiProvider _cocktailApiProvider = CocktailApiProvider();

  Future<List<Drink>> getListAlcoholics() => _cocktailApiProvider.getListAlcoholics();
  Future<List<Drink>> getListIngredients() => _cocktailApiProvider.getListIngredients();
  Future<List<Drink>> getListCategories() => _cocktailApiProvider.getListCategories();
  Future<List<Drink>> filterByCategories(String strDrink) => _cocktailApiProvider.filterByCategories(strDrink: strDrink);
  Future<List<Drink>> filterByAlcoholics(String strAlcohol) => _cocktailApiProvider.filterByAlcoholics(strAlcohol: strAlcohol);
  Future<List<Drink>> filterByIngredients(String strIngredient) => _cocktailApiProvider.filterByIngredients(strIngredient: strIngredient);
  Future<List<Drink>> detailDrink(String idDrink) => _cocktailApiProvider.detailDrink(idDrink: idDrink);
}