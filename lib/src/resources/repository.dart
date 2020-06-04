import 'dart:async';
import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/cocktail_provider.dart';

class Repository{
  final CocktailApiProvider _cocktailApiProvider = CocktailApiProvider();

  Future<List<Drink>> getListAlcoholics() => _cocktailApiProvider.getListAlcoholics();
  Future<List<Drink>> getListIngredients() => _cocktailApiProvider.getListIngredients();
  Future<List<Drink>> getListCategories() => _cocktailApiProvider.getListCategories();

}