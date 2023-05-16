import 'package:hive/hive.dart';
 part 'food_lunch.g.dart';

@HiveType(typeId: 1) 
class LunchModel{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final bool isDeleted;
  LunchModel({
    required this.id,
    required this.name,
     this.isDeleted = false

  });
}