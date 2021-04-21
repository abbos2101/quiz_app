import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDB {
  Box? _box;

  Future<Box> _getBox() async {
    if (_box == null) {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init("${dir.path}/QUIZ");
      _box = await Hive.openBox("BOX");
    }
    return _box!;
  }

  Future<bool> isBoard() async {
    return (await _getBox()).get("BOARD") ?? true;
  }

  Future<void> setBoard(bool value) async {
    (await _getBox()).put("BOARD", value);
  }

  Future<bool> isLogin() async {
    return (await _getBox()).get("LOGIN") ?? true;
  }

  Future<void> setLogin(bool value) async {
    (await _getBox()).put("LOGIN", value);
  }
}
