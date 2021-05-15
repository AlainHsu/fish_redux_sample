import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CounterAction { onIncrease, onUpdateCount }

class CounterActionCreator {
  static Action onIncrease() {
    return const Action(CounterAction.onIncrease);
  }

  static Action onUpdateCount(int count) {
    return Action(CounterAction.onUpdateCount, payload: count);
  }
}
