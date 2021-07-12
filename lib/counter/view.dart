import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    CounterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Counter Page'),
      backgroundColor: state.themeColor,
    ),
    body: Center(
      child: Text('Count: ${state.count.toString()}'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => dispatch(CounterActionCreator.onIncrease()),
      child: Icon(Icons.add),
    ),
  );
}
