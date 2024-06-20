import 'package:hive_flutter/hive_flutter.dart';
import 'package:secretary_kim/data/model/belonging.dart';
import 'package:secretary_kim/data/model/destination.dart';

class LocalStorageManager {
  LocalStorageManager._privateConstructor();

  static final LocalStorageManager storage =
      LocalStorageManager._privateConstructor();

  factory LocalStorageManager() {
    return storage;
  }

  Future<void> initStorage() async {
    await Hive.initFlutter();
    Hive.registerAdapter(DestinationAdapter());
    Hive.registerAdapter(BelongingAdapter());
    await Hive.openBox<Destination>('destinations');
  }

  Box<Destination> getDestinations() {
    return Hive.box<Destination>('destinations');
  }

  void addDestination(String createdAt, Destination destination) {
    Hive.box<Destination>('destinations').put(createdAt, destination);
  }
}
