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
    await Hive.openBox<Destination>('user_destinations');
  }

  Box<Destination> getDestinations() {
    return Hive.box<Destination>('user_destinations');
  }

  void putDestination(int index, Destination destination) {
    Hive.box<Destination>('user_destinations').put(index, destination);
  }

  void removeDestination(int index) {
    Hive.box<Destination>('user_destinations').delete(index);
  }

  void clearDestination() {
    Hive.box<Destination>('user_destinations').clear();
  }
}
