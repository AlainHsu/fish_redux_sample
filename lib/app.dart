import 'dart:io';

import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:redux_sample/route_config.dart';

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
