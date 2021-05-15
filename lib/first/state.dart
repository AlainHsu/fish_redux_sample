import 'package:fish_redux/fish_redux.dart';

class FirstState implements Cloneable<FirstState> {
  static const String fixedMsg = '我是 First Page 传过来的数据';

  String comingMsg;

  @override
  FirstState clone() {
    return FirstState()..comingMsg = comingMsg;
  }
}

FirstState initState(Map<String, dynamic> args) {
  return FirstState()..comingMsg = '暂无';
}
