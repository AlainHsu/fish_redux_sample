import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FirstAction { toSecond, onUpdateMessage, onNotifyMessage }

class FirstActionCreator {
  static Action toSecond() {
    return const Action(FirstAction.toSecond);
  }

  static Action onUpdateMessage(String msg) {
    return Action(FirstAction.onUpdateMessage, payload: msg);
  }

  static Action onNotifyMessage(String msg) {
    return Action(FirstAction.onNotifyMessage, payload: msg);
  }
}
