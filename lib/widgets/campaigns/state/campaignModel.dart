import 'dart:collection';

import 'package:scoped_model/scoped_model.dart';
import './animalModel.dart';

class CampaignModel extends Model{
  final List<AnimalModel> _items = [];
  UnmodifiableListView<AnimalModel> get items => UnmodifiableListView(_items);
  
  void add(AnimalModel item){
    _items.add(item);

    // This call tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }
}