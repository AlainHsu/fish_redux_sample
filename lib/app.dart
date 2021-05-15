import 'dart:io';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_sample/counter/page.dart';
import 'package:redux_sample/first/page.dart';
import 'package:redux_sample/guide/page.dart';
import 'package:redux_sample/second/page.dart';

import 'list/page.dart';

Widget createApp() {
  return MaterialApp(
    title: 'Redux Sample',
    // home: routes.buildPage('counter_page', null),
    home: RouteConfig.routes.buildPage(RouteConfig.guidePage, null),
    onGenerateRoute: (RouteSettings settings) {
      if (Platform.isIOS) {
        return CupertinoPageRoute(builder: (BuildContext context) {
          return RouteConfig.routes
              .buildPage(settings.name, settings.arguments);
        });
      } else {
        return MaterialPageRoute(builder: (BuildContext context) {
          return RouteConfig.routes
              .buildPage(settings.name, settings.arguments);
        });
      }
    },
  );
}

class RouteConfig {
  static const String guidePage = 'page/guide';

  ///计数器页面
  static const String countPage = 'page/count';

  ///页面传值跳转模块演示
  static const String firstPage = 'page/first';
  static const String secondPage = 'page/second';

  ///列表模块演示
  static const String listPage = 'page/list';

  static final AbstractRoutes routes = PageRoutes(pages: {
    guidePage: GuidePage(),
    countPage: CounterPage(),
    firstPage: FirstPage(),
    secondPage: SecondPage(),
    listPage: ListPage(),
  });
}
