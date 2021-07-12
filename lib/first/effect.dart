import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import '../route_config.dart';
import 'action.dart';
import 'state.dart';

Effect<FirstState> buildEffect() {
  return combineEffects(<Object, Effect<FirstState>>{
    FirstAction.toSecond: _toSecond,
  });
}

void _toSecond(Action action, Context<FirstState> ctx) async {
  var result = await Navigator.of(ctx.context).pushNamed(RouteConfig.secondPage,
      arguments: {'firstValue': FirstState.fixedMsg});
  ctx.dispatch(
      FirstActionCreator.onUpdateMessage((result as Map)['secondValue']));
}
