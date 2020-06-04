import 'package:cocktailapp/src/model/drinks.dart';
import 'package:cocktailapp/src/resources/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class CocktailDetailBloc {
  final _repository = Repository();
  final _detailDrink = PublishSubject<List<Drink>>();

  Stream<List<Drink>> get detailDrink => _detailDrink.stream;

  fetchDetailDrink(String idDrink) async{
    List<Drink> detail = await _repository.detailDrink(idDrink);
    _detailDrink.sink.add(detail);
  }

  @mustCallSuper
  void dispose() async{
    await _detailDrink?.drain();
      _detailDrink?.close();
  }
}

final detail = CocktailDetailBloc();