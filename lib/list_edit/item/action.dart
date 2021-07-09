import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItemAction { clear, onChange }

class ItemActionCreator {
  static Action clear() {
    return Action(ItemAction.clear);
  }

  static Action onChange(int id) {
    return Action(ItemAction.onChange, payload: id);
  }
}
