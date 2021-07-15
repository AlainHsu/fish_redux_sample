import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/comp/page.dart';
import 'package:redux_sample/second/page.dart';
import 'package:redux_sample/store_config.dart';

import 'counter/page.dart';
import 'first/page.dart';
import 'guide/page.dart';
import 'list/page.dart';
import 'list_edit/page.dart';

class RouteConfig {
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

  ///组件演示
  static const String componentPage = "page/CompPage";

  static final AbstractRoutes routes = PageRoutes(

      ///全局状态管理:只有特定的范围的Page(State继承了全局状态),才需要建立和 AppStore 的连接关系
      visitor: StoreConfig.visitor,
      pages: {
        guidePage: GuidePage(),
        countPage: CounterPage(),
        firstPage: FirstPage(),
        secondPage: SecondPage(),
        listPage: ListPage(),
        listEditPage: ListEditPage(),
        componentPage: CompPage(),
      });
}
