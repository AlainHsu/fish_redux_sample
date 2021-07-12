import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/store/store.dart';

class GuideState implements Cloneable<GuideState>, GlobalBaseState {
  @override
  Color themeColor;

  @override
  GuideState clone() {
    return GuideState()..themeColor = themeColor;
  }
}

GuideState initState(Map<String, dynamic> args) {
  return GuideState();
}
