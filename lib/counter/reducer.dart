import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<CounterState>>{
      CounterAction.onUpdateCount: _onUpdateCount,
    },
  );
}

CounterState _onUpdateCount(CounterState state, Action action) {
  final CounterState newState = state.clone();
  newState..count = action.payload;
  return newState;
}
