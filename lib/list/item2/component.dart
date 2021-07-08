import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class Item2Component extends Component<Item2State> {
  Item2Component()
      : super(
            view: buildView,
            dependencies: Dependencies<Item2State>(
                adapter: null,
                slots: <String, Dependent<Item2State>>{
                }),);

}
