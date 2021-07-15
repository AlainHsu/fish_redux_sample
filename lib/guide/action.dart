import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GuideAction { toCount, toJump, toList, toEditList, toComp, toBroadcast }

class GuideActionCreator {
  static Action toCount() {
    return const Action(GuideAction.toCount);
  }

  static Action toJump() {
    return const Action(GuideAction.toJump);
  }

  static Action toList() {
    return const Action(GuideAction.toList);
  }

  static Action toEditList() {
    return const Action(GuideAction.toEditList);
  }

  static Action toComp() {
    return const Action(GuideAction.toComp);
  }

  static Action toBroadcast() {
    return const Action(GuideAction.toBroadcast);
  }
}
