import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'model/travel_plan_model.dart';

class TravelPlanHive {
  static late Box _historyBox;

  static Future initHive() async {
    var path = await getApplicationDocumentsDirectory();
    Hive
      ..init(path.path)
      ..registerAdapter(TravelPlanModelAdapter());
    _historyBox = await Hive.openBox('travelPlan');
  }

  static Future putTravelPlan(TravelPlanModel model) async {
    await _historyBox.put(DateTime.now().toString(), model);
  }
}
