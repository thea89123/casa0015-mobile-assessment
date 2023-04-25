import 'package:country_code_picker/country_code_picker.dart';
import 'package:evapp/model/storge/model/travel_plan_model.dart';
import 'package:evapp/model/storge/travel_plan_hive.dart';
import 'package:evapp/screen/plan/create_plan_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('旅途计划'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const CreatePlanSheet();
                  });
            },
            icon: const Icon(Icons.calendar_month),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box('travelPlan').listenable(),
        builder: (context, box, child) {
          final list = box.values.toList().reversed.toList();
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            itemBuilder: (context, index) {
              final model = list[index] as TravelPlanModel;
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '起点',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          CountryCodePicker(
                            initialSelection: model.originPlace,
                            enabled: false,
                            showCountryOnly: true,
                            showOnlyCountryWhenClosed: true,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '终点',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          CountryCodePicker(
                            initialSelection: model.targetPlace,
                            enabled: false,
                            showCountryOnly: true,
                            showOnlyCountryWhenClosed: true,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '开始时间',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(model.startTime, style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '结束时间',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(model.endTime, style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: list.length,
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
