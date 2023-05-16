import 'package:hive/hive.dart';
part 'food_dinner.g.dart';

@HiveType(typeId: 1) 
class DinnerModel{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final bool isDeleted;
  DinnerModel({
    required this.id,
    required this.name,
     this.isDeleted = false

  });
}