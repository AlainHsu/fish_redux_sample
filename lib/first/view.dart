import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FirstState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('First Page'),
    ),
    body: Center(
      child: Text(state.comingMsg),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => dispatch(FirstActionCreator.toSecond()),
      child: Icon(Icons.arrow_forward),
    ),
  );
}
