import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstState>>{
      FirstAction.onUpdateMessage: _onUpdateMessage,
    },
  );
}

FirstState _onUpdateMessage(FirstState state, Action action) {
  final FirstState newState = state.clone();
  newState..comingMsg = action.payload;
  return newState;
}
