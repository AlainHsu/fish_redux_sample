import 'package:fish_redux/fish_redux.dart';
import 'package:redux_sample/comp/left_right_area/component.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CompPage extends Page<CompState, Map<String, dynamic>> {
  CompPage()
      : super(
          initState: initState,
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<CompState>(
              adapter: null,
              slots: <String, Dependent<CompState>>{
                //绑定 Component
                "leftArea": LeftAreaConnector() + AreaComponent(),
                "rightArea": RightAreaConnector() + AreaComponent()
              }),
          middleware: <Middleware<CompState>>[],
        );
}
