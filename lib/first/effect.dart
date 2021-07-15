import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:redux_sample/broadcast/action.dart';

import '../route_config.dart';
import 'action.dart';
import 'state.dart';

Effect<FirstState> buildEffect() {
  return combineEffects(<Object, Effect<FirstState>>{
    FirstAction.toSecond: _toSecond,
    BroadcastAction.toNotify: _receiveNotify,
  });
}

void _toSecond(Action action, Context<FirstState> ctx) async {
  var result = await Navigator.of(ctx.context).pushNamed(RouteConfig.secondPage,
      arguments: {'firstValue': FirstState.fixedMsg});
  ctx.dispatch(
      FirstActionCreator.onUpdateMessage((result as Map)['secondValue']));
}

void _receiveNotify(Action action, Context<FirstState> ctx) {
  ctx.dispatch(FirstActionCreator.onNotifyMessage(action.payload));
}
