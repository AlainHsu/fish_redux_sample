import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/store/store.dart';

class CounterState implements Cloneable<CounterState>, GlobalBaseState {
  int count;

  @override
  CounterState clone() {
    return CounterState()
      ..count = count
      ..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

CounterState initState(Map<String, dynamic> args) {
  return CounterState()..count = 0;
}
