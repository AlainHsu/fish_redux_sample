import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GuideState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Guide Page'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
              onPressed: () => dispatch(GuideActionCreator.toCount()),
              child: Text('Count')),
          OutlinedButton(
              onPressed: () => dispatch(GuideActionCreator.toJump()),
              child: Text('Jump')),
          OutlinedButton(
              onPressed: () => dispatch(GuideActionCreator.toList()),
              child: Text('List')),
          OutlinedButton(
              onPressed: () => dispatch(GuideActionCreator.toEditList()),
              child: Text('Edit List')),
        ],
      ),
    ),
  );
}
