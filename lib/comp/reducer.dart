import 'dart:math';
import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CompState> buildReducer() {
  return asReducer(
    <Object, Reducer<CompState>>{
      CompAction.change: _change,
    },
  );
}

CompState _change(CompState state, Action action) {
  final CompState newState = state.clone();

  newState.leftAreaState.text = "Left text: ${Random().nextInt(1000)}";
  newState.leftAreaState.color =
      Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1);

  newState.rightAreaState.text = "Right text: ${Random().nextInt(1000)}";
  newState.rightAreaState.color =
      Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1);

  return newState;
}

int randomColor() {
  return Random().nextInt(255);
}
