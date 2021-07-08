import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/list/bean/item_detail_bean.dart';

class Item2State implements Cloneable<Item2State> {
  Datas itemDetail;

  Item2State({this.itemDetail});

  @override
  Item2State clone() {
    return Item2State()..itemDetail = itemDetail;
  }
}

Item2State initState(Map<String, dynamic> args) {
  return Item2State();
}
