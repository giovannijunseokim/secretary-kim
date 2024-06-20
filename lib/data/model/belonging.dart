import 'package:hive/hive.dart';

part 'belonging.g.dart';

@HiveType(typeId: 1)
class Belonging {
  @HiveField(0)
  String name;

  Belonging({
    required this.name,
  });
}
