import 'package:evapp/screen/home/weather_model_entity.dart';
import 'package:evapp/screen/home/weather_utils.dart';
import 'package:flutter/material.dart';

class RealtimeView extends StatelessWidget {
  final WeatherModelEntity entity;

  const RealtimeView({
    Key? key,
    required this.entity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${entity.result?.realtime?.temperature?.toInt()}',
              style: const TextStyle(
                fontSize: 108,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const Text(
              '°',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                "${WeatherUtils.convertDesc(entity.result?.realtime?.skycon)}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(width: 12),
              Image.asset(
                WeatherUtils.getWeatherIcon(
                    WeatherUtils.convertWeatherType(entity.result?.realtime?.skycon)),
                width: 24,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "${entity.result?.forecastKeypoint}",
            style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
