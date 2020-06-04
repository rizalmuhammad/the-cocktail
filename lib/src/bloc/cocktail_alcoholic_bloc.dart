import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class CocktailAlcoholicBloc {
  final _repository = Repository();
  final _alcoholicFetcher = PublishSubject<List<Drink>>();
  final _ingredientFetcher = PublishSubject<List<Drink>>();
  final _categoriesFetcher = PublishSubject<List<Drink>>();

  Stream<List<Drink>> get allAlcoholics => _alcoholicFetcher.stream;
  Stream<List<Drink>> get allIngredients => _ingredientFetcher.stream;
  Stream<List<Drink>> get allCategories => _categoriesFetcher.stream;

  fetchAllAlcoholics() async{
    List<Drink> alcoholic = await _repository.getListAlcoholics();
    _alcoholicFetcher.sink.add(alcoholic);
    List<Drink> ingredient = await _repository.getListIngredients();
    _ingredientFetcher.sink.add(ingredient);
    List<Drink> drink = await _repository.getListCategories();
    _categoriesFetcher.sink.add(drink);
  }

  dispose(){
    _alcoholicFetcher?.close();
    _ingredientFetcher?.close();
    _categoriesFetcher?.close();
  }
}
final cocktails = CocktailAlcoholicBloc();