import 'package:hive/hive.dart';
import 'package:secretary_kim/data/model/belonging.dart';

part 'destination.g.dart';

@HiveType(typeId: 0)
class Destination {
  @HiveField(0)
  String name;
  @HiveField(1)
  List<Belonging> belongings;

  Destination({
    required this.name,
    required this.belongings,
  });
}
