import 'package:hive/hive.dart';
import 'package:secretary_kim/data/model/belonging.dart';

part 'destination.g.dart';

@HiveType(typeId: 0)
class Destination {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  List<Belonging> belongings;

  Destination({
    required this.id,
    required this.name,
    required this.belongings,
  });
}
