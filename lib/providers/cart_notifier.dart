import 'package:flutter/cupertino.dart';
import 'package:simple_prov_app/model/item.dart';

class CartNotifier extends ChangeNotifier {
  List _items = List();

  List get items => _items;

  set items(List value) {
    _items = value;
  }

  addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }
}