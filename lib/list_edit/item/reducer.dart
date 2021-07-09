import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      ItemAction.clear: _clear,
      ItemAction.onChange: _onChange,
    },
  );
}

ItemState _clear(ItemState state, Action action) {
  if (state.itemStatus) {
    return state.clone()..itemStatus = false;
  }
  return state;
}

ItemState _onChange(ItemState state, Action action) {
  if (state.id == action.payload) {
    return state.clone()..itemStatus = !state.itemStatus;
  }
  return state;
}
