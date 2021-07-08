import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/list_edit/item/component.dart';
import 'package:redux_sample/list_edit/state.dart';

class ListItemAdapter extends SourceFlowAdapter<ListEditState> {
  static const String itemName = 'item';

  ListItemAdapter()
      : super(
          pool: <String, Component<Object>>{itemName: ItemComponent()},
        );
}
