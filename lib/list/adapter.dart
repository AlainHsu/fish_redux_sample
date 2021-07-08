import 'package:fish_redux/fish_redux.dart';
import 'item2/component.dart';
import 'package:redux_sample/list/state.dart';
import 'item/component.dart';

class ListItemAdapter extends SourceFlowAdapter<ListState> {
  static const String item_style = "project_tab_item";
  static const String item_style_2 = "project_tab_item_2";

  ListItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            ///定义item的样式
            item_style: ItemComponent(),
            item_style_2: Item2Component(),
          },
        );
}
