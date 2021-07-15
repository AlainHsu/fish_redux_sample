import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class AreaState implements Cloneable<AreaState> {
  String title;
  String text;
  Color color;

  AreaState({this.title = "", this.text = "", this.color = Colors.blue});

  @override
  AreaState clone() {
    return AreaState()
      ..text = text
      ..title = title
      ..color = color;
  }
}

AreaState initState(Map<String, dynamic> args) {
  return AreaState();
}
