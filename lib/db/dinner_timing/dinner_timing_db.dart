import 'package:hive/hive.dart';
import 'package:me/models/food_dinner/food_dinner.dart';
const DINNER_DB_NAME = 'dinner-database';
abstract class DinnerDbFunctions{
  Future<List<DinnerModel>>getDinners();
  Future<void> insertDinner(DinnerModel value);
}
class DinnerDB implements DinnerDbFunctions{
  @override
  Future<void> insertDinner(DinnerModel value) async{
    final _dinnerDB = await Hive.openBox(DINNER_DB_NAME);
    _dinnerDB.add(value);

  }
  @override
  Future<List<DinnerModel>> getDinners() async{
    final _dinnerDB = await Hive.openBox<DinnerModel>(DINNER_DB_NAME);
    return _dinnerDB.values.toList();
  }

}