import 'package:hive/hive.dart';

part 'travel_plan_model.g.dart';

@HiveType(typeId: 0)
class TravelPlanModel {
  TravelPlanModel(
      {this.originPlace = '', this.targetPlace = '', this.startTime = '', this.endTime = ''});

  @HiveField(0)
  String originPlace;

  @HiveField(1)
  String targetPlace;

  @HiveField(2)
  String startTime;

  @HiveField(3)
  String endTime;
}
