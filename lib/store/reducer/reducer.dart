import 'dart:developer';

import 'package:learning_todo_app/store/action/actions.dart';
import 'package:learning_todo_app/store/model/state.dart';
import 'package:redux/redux.dart';

final Reducer<AppState> appStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, SetStatusApp>(reducerSetStatusApp),
  TypedReducer<AppState, SetGetTasks>(reducerSetGetTasks),
]);

AppState reducerSetStatusApp(AppState state, SetStatusApp action) {
  return state.rebuild((update) => update..status = action.status);
}

AppState reducerSetGetTasks(AppState state, SetGetTasks action) {
  return state.rebuild((update) => update..tasks = action.tasks.toBuilder());
}
