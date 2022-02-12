import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:learning_todo_app/model/task.dart';

part 'serializers.g.dart';

@SerializersFor([
  Task,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
