
import 'package:bloc_counter/redux/actions/counter_action.dart';

int counterReducer(int currentCount, action) {
  if (action is IncrementCountAction) {
    currentCount++;
    return currentCount;
  } else if (action is DecrementCountAction) {
    currentCount --;
    return currentCount;
  } else {
    return currentCount;
  }


}
