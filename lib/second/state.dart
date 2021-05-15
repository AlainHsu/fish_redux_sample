import 'package:fish_redux/fish_redux.dart';

class SecondState implements Cloneable<SecondState> {
  static const String fixedMsg = '我是 Second Page 传过来的数据';

  String comingMsg;

  @override
  SecondState clone() {
    return SecondState()..comingMsg = comingMsg;
  }
}

SecondState initState(Map<String, dynamic> args) {
  return SecondState()..comingMsg = args['firstValue'];
}
