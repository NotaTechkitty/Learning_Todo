// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middleware_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoCreateTask extends DoCreateTask {
  @override
  final String title;

  factory _$DoCreateTask([void Function(DoCreateTaskBuilder)? updates]) =>
      (new DoCreateTaskBuilder()..update(updates)).build();

  _$DoCreateTask._({required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'DoCreateTask', 'title');
  }

  @override
  DoCreateTask rebuild(void Function(DoCreateTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoCreateTaskBuilder toBuilder() => new DoCreateTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoCreateTask && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoCreateTask')..add('title', title))
        .toString();
  }
}

class DoCreateTaskBuilder
    implements Builder<DoCreateTask, DoCreateTaskBuilder> {
  _$DoCreateTask? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DoCreateTaskBuilder();

  DoCreateTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoCreateTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoCreateTask;
  }

  @override
  void update(void Function(DoCreateTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoCreateTask build() {
    final _$result = _$v ??
        new _$DoCreateTask._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'DoCreateTask', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$SetCreateTask extends SetCreateTask {
  @override
  final String title;

  factory _$SetCreateTask([void Function(SetCreateTaskBuilder)? updates]) =>
      (new SetCreateTaskBuilder()..update(updates)).build();

  _$SetCreateTask._({required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'SetCreateTask', 'title');
  }

  @override
  SetCreateTask rebuild(void Function(SetCreateTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetCreateTaskBuilder toBuilder() => new SetCreateTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetCreateTask && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetCreateTask')..add('title', title))
        .toString();
  }
}

class SetCreateTaskBuilder
    implements Builder<SetCreateTask, SetCreateTaskBuilder> {
  _$SetCreateTask? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SetCreateTaskBuilder();

  SetCreateTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetCreateTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetCreateTask;
  }

  @override
  void update(void Function(SetCreateTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetCreateTask build() {
    final _$result = _$v ??
        new _$SetCreateTask._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'SetCreateTask', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$DoGetTasks extends DoGetTasks {
  factory _$DoGetTasks([void Function(DoGetTasksBuilder)? updates]) =>
      (new DoGetTasksBuilder()..update(updates)).build();

  _$DoGetTasks._() : super._();

  @override
  DoGetTasks rebuild(void Function(DoGetTasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoGetTasksBuilder toBuilder() => new DoGetTasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoGetTasks;
  }

  @override
  int get hashCode {
    return 746996214;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DoGetTasks').toString();
  }
}

class DoGetTasksBuilder implements Builder<DoGetTasks, DoGetTasksBuilder> {
  _$DoGetTasks? _$v;

  DoGetTasksBuilder();

  @override
  void replace(DoGetTasks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoGetTasks;
  }

  @override
  void update(void Function(DoGetTasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoGetTasks build() {
    final _$result = _$v ?? new _$DoGetTasks._();
    replace(_$result);
    return _$result;
  }
}

class _$SetGetTasks extends SetGetTasks {
  @override
  final BuiltList<Task> tasks;

  factory _$SetGetTasks([void Function(SetGetTasksBuilder)? updates]) =>
      (new SetGetTasksBuilder()..update(updates)).build();

  _$SetGetTasks._({required this.tasks}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tasks, 'SetGetTasks', 'tasks');
  }

  @override
  SetGetTasks rebuild(void Function(SetGetTasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetGetTasksBuilder toBuilder() => new SetGetTasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetGetTasks && tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetGetTasks')..add('tasks', tasks))
        .toString();
  }
}

class SetGetTasksBuilder implements Builder<SetGetTasks, SetGetTasksBuilder> {
  _$SetGetTasks? _$v;

  ListBuilder<Task>? _tasks;
  ListBuilder<Task> get tasks => _$this._tasks ??= new ListBuilder<Task>();
  set tasks(ListBuilder<Task>? tasks) => _$this._tasks = tasks;

  SetGetTasksBuilder();

  SetGetTasksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetGetTasks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetGetTasks;
  }

  @override
  void update(void Function(SetGetTasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetGetTasks build() {
    _$SetGetTasks _$result;
    try {
      _$result = _$v ?? new _$SetGetTasks._(tasks: tasks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        tasks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetGetTasks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DoDeleteTask extends DoDeleteTask {
  @override
  final Task task;

  factory _$DoDeleteTask([void Function(DoDeleteTaskBuilder)? updates]) =>
      (new DoDeleteTaskBuilder()..update(updates)).build();

  _$DoDeleteTask._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, 'DoDeleteTask', 'task');
  }

  @override
  DoDeleteTask rebuild(void Function(DoDeleteTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoDeleteTaskBuilder toBuilder() => new DoDeleteTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoDeleteTask && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoDeleteTask')..add('task', task))
        .toString();
  }
}

class DoDeleteTaskBuilder
    implements Builder<DoDeleteTask, DoDeleteTaskBuilder> {
  _$DoDeleteTask? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  DoDeleteTaskBuilder();

  DoDeleteTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoDeleteTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DoDeleteTask;
  }

  @override
  void update(void Function(DoDeleteTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DoDeleteTask build() {
    _$DoDeleteTask _$result;
    try {
      _$result = _$v ?? new _$DoDeleteTask._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DoDeleteTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SetDeleteTask extends SetDeleteTask {
  @override
  final Task task;

  factory _$SetDeleteTask([void Function(SetDeleteTaskBuilder)? updates]) =>
      (new SetDeleteTaskBuilder()..update(updates)).build();

  _$SetDeleteTask._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, 'SetDeleteTask', 'task');
  }

  @override
  SetDeleteTask rebuild(void Function(SetDeleteTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetDeleteTaskBuilder toBuilder() => new SetDeleteTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetDeleteTask && task == other.task;
  }

  @override
  int get hashCode {
    return $jf($jc(0, task.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetDeleteTask')..add('task', task))
        .toString();
  }
}

class SetDeleteTaskBuilder
    implements Builder<SetDeleteTask, SetDeleteTaskBuilder> {
  _$SetDeleteTask? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  SetDeleteTaskBuilder();

  SetDeleteTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetDeleteTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetDeleteTask;
  }

  @override
  void update(void Function(SetDeleteTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetDeleteTask build() {
    _$SetDeleteTask _$result;
    try {
      _$result = _$v ?? new _$SetDeleteTask._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetDeleteTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
