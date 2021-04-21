import 'package:get_it/get_it.dart';
import '../data/hive/hive_db.dart';

final GetIt locator = GetIt.instance;

void locatorSetup() {
  locator.registerFactory(() => HiveDB());
}
