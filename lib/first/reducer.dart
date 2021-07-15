import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstState>>{
      FirstAction.onUpdateMessage: _onUpdateMessage,
      FirstAction.onNotifyMessage: _onNotifyMessage,
    },
  );
}

FirstState _onUpdateMessage(FirstState state, Action action) {
  final FirstState newState = state.clone();
  newState..comingMsg = action.payload;
  return newState;
}

FirstState _onNotifyMessage(FirstState state, Action action) {
  final FirstState newState = state.clone();
  newState..notifyMsg = action.payload;
  return newState;
}
