import 'package:redux/redux.dart';
import '../action/CombineAction.dart';

final searchReducer = TypedReducer(tempReducer);

bool tempReducer(bool searchingState, SearchAction action) {
  print("We are in tempReducer function inside  SearchReducer.dart");
  if (action is SearchAction) {
    print(searchingState);
    return !searchingState;
  }
}
