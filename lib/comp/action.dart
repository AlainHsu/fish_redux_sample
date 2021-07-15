import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CompAction { change }

class CompActionCreator {
  static Action change() {
    return const Action(CompAction.change);
  }
}
