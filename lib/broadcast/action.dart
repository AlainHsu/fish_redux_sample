import 'package:fish_redux/fish_redux.dart';

enum BroadcastAction { toNotify }

class BroadcastActionCreator {
  static Action toNotify(String msg) {
    return Action(BroadcastAction.toNotify, payload: msg);
  }
}
