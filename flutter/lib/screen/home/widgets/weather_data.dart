import 'package:evapp/widgets/blur_rect.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../weather_model_entity.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({Key? key, required this.entity}) : super(key: key);

  final WeatherModelEntity entity;

  @override
  Widget build(BuildContext context) {
    int? comfortIndex = entity.result?.realtime?.lifeIndex?.comfort?.index;
    double comfortRatio = comfortIndex == null ? 0 : comfortIndex.toDouble() / 13;
    String comfortStr = '${(comfortRatio * 100).toInt()}%';
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
                  value: comfortRatio,
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  backgroundColor: Colors.white,
                  borderColor: Colors.blueAccent,
                  borderWidth: 5.0,
                  direction: Axis.vertical,
                  center: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        comfortStr,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${entity.result?.realtime?.lifeIndex?.comfort?.desc}',
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
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  backgroundColor: Colors.white,
                  borderColor: Colors.blueAccent,
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
                        'Experience',
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
