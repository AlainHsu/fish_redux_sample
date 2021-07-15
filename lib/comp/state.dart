import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_sample/comp/left_right_area/state.dart';

class CompState implements Cloneable<CompState> {
  AreaState leftAreaState;
  AreaState rightAreaState;

  @override
  CompState clone() {
    return CompState()
      ..leftAreaState = leftAreaState
      ..rightAreaState = rightAreaState;
  }
}

CompState initState(Map<String, dynamic> args) {
  return CompState()
    ..leftAreaState = AreaState(
        title: "Left title", text: "Left text", color: Colors.indigoAccent)
    ..rightAreaState =
        AreaState(title: "Right title", text: "Right text", color: Colors.blue);
}

///左边Component连接器
class LeftAreaConnector extends ConnOp<CompState, AreaState>
    with ReselectMixin<CompState, AreaState> {
  @override
  AreaState computed(CompState state) {
    return state.leftAreaState.clone();
  }

  @override
  void set(CompState state, AreaState subState) {
    super.set(state, subState);
    state.leftAreaState = subState;
  }
}

///左边Component连接器
class RightAreaConnector extends ConnOp<CompState, AreaState>
    with ReselectMixin<CompState, AreaState> {
  @override
  AreaState computed(CompState state) {
    return state.rightAreaState.clone();
  }

  @override
  void set(CompState state, AreaState subState) {
    super.set(state, subState);
    state.rightAreaState = subState;
  }
}
