import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/list/item2/state.dart';

import 'action.dart';
import 'bean/item_detail_bean.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ListState> ctx) async {
  String apiUrl = "https://www.wanandroid.com/project/list/1/json";
  Response response = await Dio().get(apiUrl);
  ItemDetailBean itemDetailBean =
      ItemDetailBean.fromJson(json.decode(response.toString()));
  List<Datas> itemDetails = itemDetailBean.data.datas;

  ///构建符合要求的列表数据源
  List<Object> items = List.generate(itemDetails.length, (index) {
    if (index % 2 == 0) {
      return ItemState(itemDetail: itemDetails[index]);
    } else {
      return Item2State(itemDetail: itemDetails[index]);
    }
  });

  ///通知更新列表数据源
  ctx.dispatch(ListActionCreator.updateItem(items));
}
