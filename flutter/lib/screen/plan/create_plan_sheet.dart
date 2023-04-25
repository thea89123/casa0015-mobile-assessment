import 'package:country_code_picker/country_code_picker.dart';
import 'package:date_format/date_format.dart';
import 'package:evapp/model/storge/model/travel_plan_model.dart';
import 'package:evapp/model/storge/travel_plan_hive.dart';
import 'package:flutter/material.dart';

class CreatePlanSheet extends StatefulWidget {
  const CreatePlanSheet({Key? key}) : super(key: key);

  @override
  State<CreatePlanSheet> createState() => _CreatePlanSheetState();
}

class _CreatePlanSheetState extends State<CreatePlanSheet> {
  TravelPlanModel model = TravelPlanModel();

  bool get enable =>
      model.targetPlace.isNotEmpty &&
      model.originPlace.isNotEmpty &&
      model.startTime.isNotEmpty &&
      model.endTime.isNotEmpty;

  @override
  void initState() {
    super.initState();
    model.originPlace = 'United Kingdom';
    model.targetPlace = 'United Kingdom';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: double.maxFinite,
          child: Stack(
            children: [
              Align(
                child: Text(
                  'Create a trip',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CloseButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Card(
                  elevation: 0.3,
                  child: Container(
                    height: 54,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'starting',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        CountryCodePicker(
                          onChanged: (country) {
                            debugPrint('country: ${country.code}');
                            model.originPlace = country.code ?? '';
                            setState(() {});
                          },
                          initialSelection: 'GB',
                          hideSearch: true,
                          showCountryOnly: true,
                          showOnlyCountryWhenClosed: true,
                          alignLeft: false,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0.3,
                  child: Container(
                    height: 54,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'terminal',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        CountryCodePicker(
                          onChanged: (country) {
                            model.targetPlace = country.name ?? '';
                            setState(() {});
                          },
                          initialSelection: 'GB',
                          showCountryOnly: true,
                          showOnlyCountryWhenClosed: true,
                          alignLeft: false,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final dateTime = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2099));
                    if (dateTime != null) {
                      model.startTime = formatDate(dateTime, [yyyy, '-', mm, '-', dd]);
                      setState(() {});
                    }
                  },
                  child: Card(
                    elevation: 0.3,
                    child: Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Start time',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(model.startTime, style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final dateTime = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2099));
                    if (dateTime != null) {
                      model.endTime = formatDate(dateTime, [yyyy, '-', mm, '-', dd]);
                      setState(() {});
                    }
                  },
                  child: Card(
                    elevation: 0.3,
                    child: Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'End time',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(model.endTime, style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: enable
                        ? () async {
                            await TravelPlanHive.putTravelPlan(model);
                            if (!mounted) return;
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Created successfully')));
                          }
                        : null,
                    child: Text(
                      'CREATE',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
