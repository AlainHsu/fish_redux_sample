import 'package:fish_redux/fish_redux.dart';

class CounterState implements Cloneable<CounterState> {
  int count;

  @override
  CounterState clone() {
    return CounterState()..count = count;
  }
}

CounterState initState(Map<String, dynamic> args) {
  return CounterState()..count = 0;
}
