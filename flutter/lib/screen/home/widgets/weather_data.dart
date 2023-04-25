import 'package:evapp/widgets/blur_rect.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../weather_model_entity.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({Key? key, required this.entity}) : super(key: key);

  final WeatherModelEntity entity;

  @override
  Widget build(BuildContext context) {
    int? aqiValue = entity.result?.realtime?.airQuality?.aqi?.chn;
    String aqiValueStr = aqiValue == null ? "0" : "$aqiValue";
    double aqiRatio = aqiValue == null ? 0 : aqiValue.toDouble() / 500;
    double humidityValue = entity.result?.realtime?.humidity ?? 0;
    String humidityStr = "${(humidityValue * 100).toInt()}%";

    return Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: BlurWidget(
              child: Container(
                margin: const EdgeInsets.all(12),
                child: LiquidCircularProgressIndicator(
                  value: aqiRatio,
                  valueColor: const AlwaysStoppedAnimation(Colors.pink),
                  backgroundColor: Colors.white,
                  borderColor: Colors.redAccent,
                  borderWidth: 5.0,
                  direction: Axis.vertical,
                  center: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        aqiValueStr,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${entity.result?.realtime?.airQuality?.description?.chn}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: BlurWidget(
              child: Container(
                margin: const EdgeInsets.all(12),
                child: LiquidCircularProgressIndicator(
                  value: humidityValue,
                  valueColor: const AlwaysStoppedAnimation(Colors.pink),
                  backgroundColor: Colors.white,
                  borderColor: Colors.redAccent,
                  borderWidth: 5.0,
                  direction: Axis.vertical,
                  center: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        humidityStr,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '体感',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
