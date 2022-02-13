import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:learning_todo_app/model/task.dart';
import 'package:learning_todo_app/repository/repository.dart';
import 'package:learning_todo_app/store/action/actions.dart';
import 'package:learning_todo_app/store/model/state.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:learning_todo_app/store/middleware/epics.dart';
import 'package:learning_todo_app/store/reducer/reducer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final repository = Repository();
  final store = Store<AppState>(appStateReducer,
      initialState: AppState.create(),
      middleware: [EpicMiddleware<AppState>(AppMiddleware(repository))]);
  runApp(TodoApp(
    store: store,
  ));
}

class TodoApp extends StatelessWidget {
  final Store<AppState> store;
  const TodoApp({required this.store, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        home: ListTaskScreen(),
      ),
    );
  }
}

class ListTaskScreen extends StatelessWidget {
  const ListTaskScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaskScreen()),
          );
        },
        child: const Text("ADD"),
      ),
      body: Center(
        child: StoreConnector<AppState, List<Task>>(
            converter: (store) => store.state.tasks.toList(),
            builder: (context, vm) {
              final int length = vm.length;
              return ListView.builder(
                itemCount: length,
                itemBuilder: (context, index) => Text(vm[index].title),
              );
            }),
      ),
    );
  }
}

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final textController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Store<AppState>>(
        converter: (store) => store,
        builder: (context, vm) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                vm.dispatch(DoCreateTask(
                    (update) => update..title = textController.text));
                Navigator.pop(context);
              },
              child: const Text("ADD"),
            ),
            body: Center(
              child: TextField(
                controller: textController,
              ),
            ),
          );
        });
  }
}
