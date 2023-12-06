import 'package:states_rebuilder/scr/state_management/rm.dart';

// ignore: duplicate_import
import 'shared_preferences.dart';
import 'fake.dart';
import 'hive.dart';

abstract class IConfig {
  IPersistStore get store;
  String get appName;
  String get apiHost;
  String get authToken;
  String get fcmServerKey;
}

class ConfigTest implements IConfig {
  @override
  IPersistStore get store => StoreFake();
  @override
  String get apiHost => 'test.com';
  @override
  String get appName => 'TEST_FeMaster';
  @override
  String get authToken => 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz';
  @override
  String get fcmServerKey =>
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}

class ConfigDev implements IConfig {
  @override
  IPersistStore get store => StoreFake();
  @override
  String get appName => 'DEV_FeMaster';
  @override
  String get apiHost => 'https://gorest.co.in';
  @override
  String get authToken => '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
  @override
  String get fcmServerKey =>
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}

class ConfigStage implements IConfig {
  @override
  IPersistStore get store => StoreHive();
  @override
  String get appName => 'STG_FeMaster';
  @override
  String get apiHost => 'stg.example.com';
  @override
  String get authToken => '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
  @override
  String get fcmServerKey =>
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}

class ConfigProd implements IConfig {
  @override
  IPersistStore get store => StoreSharedPreferences();
  @override
  String get appName => 'FeMaster';
  @override
  String get apiHost => 'example.com';
  @override
  String get authToken => '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
  @override
  String get fcmServerKey =>
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}
