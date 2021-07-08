import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/list/adapter.dart';
import 'package:redux_sample/list/item/state.dart';

class ListState extends MutableSource implements Cloneable<ListState> {
  List<Object> items;

  @override
  ListState clone() {
    return ListState();
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) {
    if (items[index] is ItemState) {
      return ListItemAdapter.item_style;
    } else {
      return ListItemAdapter.item_style_2;
    }
  }

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
