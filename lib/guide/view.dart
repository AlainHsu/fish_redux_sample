import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_sample/store/action.dart';
import 'package:redux_sample/store/state.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GuideState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Guide Page'),
      backgroundColor: state.store.themeColor,
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
          OutlinedButton(
              onPressed: () => GlobalStore.store
                  .dispatch(GlobalActionCreator.onChangeThemeColor()),
              child: Text('Change theme')),
        ],
      ),
    ),
  );
}
