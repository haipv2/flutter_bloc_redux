
import 'package:bloc_counter/redux/reducers/counter_reducer.dart';

class AppState{
 final int count;
  final bool isLoading;

 AppState({this.count=0, this.isLoading=false});


 // State has never been changed directly
 // In Redux state is read-only, just change state in pure function from reducer
 AppState copyWith({int count, bool isLoading}){
   return new AppState(
     count: count ?? this.count,
     isLoading: isLoading ?? this.isLoading
   );
 }

 @override
  String toString() {
    return 'AppState{isLoading: $isLoading, count: $count}';
  }

}