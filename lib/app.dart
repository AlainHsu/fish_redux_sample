import 'dart:io';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:redux_sample/counter/page.dart';
import 'package:redux_sample/first/page.dart';
import 'package:redux_sample/guide/page.dart';
import 'package:redux_sample/second/page.dart';
import 'package:redux_sample/store/state.dart';
import 'package:redux_sample/store/store.dart';

import 'list/page.dart';
import 'list_edit/page.dart';

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
  ///全局状态更新
  static _updateState() {
    return (Object pageState, GlobalState appState) {
      final GlobalBaseState p = pageState;

      if (pageState is Cloneable) {
        final Object copy = pageState.clone();
        final GlobalBaseState newState = copy;
        if (p.themeColor != appState.themeColor) {
          newState.themeColor = appState.themeColor;
        }

        /// 返回新的 state 并将数据设置到 ui
        return newState;
      }
      return pageState;
    };
  }

  static const String guidePage = 'page/guide';

  ///计数器页面
  static const String countPage = 'page/count';

  ///页面传值跳转模块演示
  static const String firstPage = 'page/first';
  static const String secondPage = 'page/second';

  ///列表模块演示
  static const String listPage = 'page/list';

  ///列表编辑演示
  static const String listEditPage = 'page/list_edit';

  static final AbstractRoutes routes = PageRoutes(

      ///全局状态管理:只有特定的范围的Page(State继承了全局状态),才需要建立和 AppStore 的连接关系
      visitor: (String path, Page<Object, dynamic> page) {
        if (page.isTypeof<GlobalBaseState>()) {
          ///建立AppStore驱动PageStore的单向数据连接： 参数1 AppStore  参数2 当AppStore.state变化时,PageStore.state该如何变化
          page.connectExtraStore<GlobalState>(
              GlobalStore.store, _updateState());
        }
      },
      pages: {
        guidePage: GuidePage(),
        countPage: CounterPage(),
        firstPage: FirstPage(),
        secondPage: SecondPage(),
        listPage: ListPage(),
        listEditPage: ListEditPage(),
      });
}
