import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class CocktailCategoriesBloc {

  final _repository = Repository();
  final _categoriesFetcher = PublishSubject<List<Drink>>();

  Observable<List<Drink>> get allCategories => _categoriesFetcher.stream;

  fetchAllCategories() async{
    List<Drink> drink = await _repository.getListCategories();
    _categoriesFetcher.sink.add(drink);
  }

  dispose(){
    _categoriesFetcher?.close();
  }
}
final bloc = CocktailCategoriesBloc();