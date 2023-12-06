import 'package:hive_flutter/adapters.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

class StoreHive implements IPersistStore {
  late Box box;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('myBox');
  }

  @override
  Object? read(String key) {
    return box.get(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    return box.put(key, value);
  }

  @override
  Future<void> delete(String key) async {
    return box.delete(key);
  }

  @override
  Future<void> deleteAll() async {
    await box.clear();
  }
}
