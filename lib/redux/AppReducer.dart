import 'CombineState.dart';
import './action/CombineAction.dart';
// import './reducer/CombineReducer.dart';

CombineState appReducer(dynamic state, action) {
  print("We are in appReducer function inside   AppReducer.dart");

  var tempState;

  if (action is SearchAction) {
    print("let's test");
    print("State: " + state.searching.toString());
    tempState = !state.searching;
    print("tempState: " + tempState.toString());
  }

  return CombineState(
    loading: state.loading,
    searching: tempState,
    currentRoute: "testing1",
    currentBound: "testing2",
    currentServiceType: "testing3",
    timerList: [],
  );
}
