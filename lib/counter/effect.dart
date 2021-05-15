import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.onIncrease: _onIncrease,
  });
}

void _onIncrease(Action action, Context<CounterState> ctx) {
  ctx.dispatch(CounterActionCreator.onUpdateCount(ctx.state.count + 1));
}
