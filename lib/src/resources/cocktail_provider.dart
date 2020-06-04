import 'dart:convert';
import 'package:cocktailapp/src/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:cocktailapp/src/model/drinks.dart';

class CocktailApiProvider{

  Future<List<Drink>> getListAlcoholics() async{
    var response = await http.get(listAlcoholics);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Drink> alcoholics = CocktailsModel.fromJson(data).drinks;
      return alcoholics;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Drink>> getListCategories() async{
    var response = await http.get(listCategories);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Drink> categories = CocktailsModel.fromJson(data).drinks;
      return categories;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Drink>> getListIngredients() async{
    var response = await http.get(listIngredients);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Drink> ingredients = CocktailsModel.fromJson(data).drinks;
      return ingredients;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Drink>> filterByCategories({String strDrink}) async{
    var response = await http.get(filterByCategory+strDrink);
    print(filterByCategory+"Ordinary_Drink");
    
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Drink> categories = CocktailsModel.fromJson(data).drinks;
      return categories;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Drink>> filterByAlcoholics() async{
    var response = await http.get(filterByAlcoholic);
    
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Drink> alcoholics = CocktailsModel.fromJson(data).drinks;
      return alcoholics;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Drink>> filterByIngredients() async{
    var response = await http.get(filterByIngredient);
    
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Drink> ingredients = CocktailsModel.fromJson(data).drinks;
      return ingredients;
    } else {
      throw Exception('Failed to load data');
    }
  }
}