import 'package:hive/hive.dart';
import 'package:me/models/food_lunch/food_lunch.dart';
const LUNCH_DB_NAME = 'lunch-database';
abstract class LunchDbFunctions{
  Future<List<LunchModel>>getLunch();
  Future<void> insertLunch(LunchModel value);
}
class LunchDB implements LunchDbFunctions{
  @override
  Future<void> insertLunch(LunchModel value) async{
    final _lunchDB = await Hive.openBox(LUNCH_DB_NAME);
    _lunchDB.add(value);

  }
  @override
  Future<List<LunchModel>> getLunch() async{
    final _lunchDB = await Hive.openBox<LunchModel>(LUNCH_DB_NAME);
    return _lunchDB.values.toList();
  }

}