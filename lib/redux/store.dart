import 'package:redux/redux.dart';
import 'CombineState.dart';
import 'AppReducer.dart';

final store = Store<CombineState>(appReducer,
    initialState: CombineState(
      loading: false,
      searching: false,
      currentRoute: "",
      currentBound: "",
      currentServiceType: "",
      timerList: [],
    ));
