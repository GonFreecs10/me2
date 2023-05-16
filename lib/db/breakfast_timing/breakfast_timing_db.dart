import 'package:hive/hive.dart';
import 'package:me/models/food_breakfast/food_breakfast.dart';
const BREAKFAST_DB_NAME = 'breakfast-database';
abstract class BreakfastDbFunctions{
  Future<List<BreakFastModel>>getBreakfast();
  Future<void> insertBreakfast(BreakFastModel value);
}
class BreakfastDB implements BreakfastDbFunctions{
  @override
  Future<void> insertBreakfast(BreakFastModel value) async{
    final _breakfastDB = await Hive.openBox(BREAKFAST_DB_NAME);
    _breakfastDB.add(value);

  }
  @override
  Future<List<BreakFastModel>> getBreakfast() async{
    final _breakfastDB = await Hive.openBox<BreakFastModel>(BREAKFAST_DB_NAME);
    return _breakfastDB.values.toList();
  }

}