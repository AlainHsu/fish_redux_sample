import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import '../app.dart';
import 'action.dart';
import 'state.dart';

Effect<GuideState> buildEffect() {
  return combineEffects(<Object, Effect<GuideState>>{
    GuideAction.toCount: _toCount,
    GuideAction.toJump: _toJump,
    GuideAction.toList: _toList,
  });
}

void _toCount(Action action, Context<GuideState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.countPage);
}

void _toJump(Action action, Context<GuideState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.firstPage);
}

void _toList(Action action, Context<GuideState> ctx) {
  Navigator.of(ctx.context).pushNamed(RouteConfig.listPage);
}
