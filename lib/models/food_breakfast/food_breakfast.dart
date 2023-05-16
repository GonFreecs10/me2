import 'package:hive/hive.dart';
part 'food_breakfast.g.dart';

@HiveType(typeId: 1) 
class BreakFastModel{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final bool isDeleted;
  BreakFastModel({
    required this.id,
    required this.name,
     this.isDeleted = false

  });
}