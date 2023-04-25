import 'package:evapp/screen/home/weather_model_entity.dart';
import 'package:evapp/screen/home/weather_utils.dart';
import 'package:evapp/widgets/blur_rect.dart';
import 'package:flutter/material.dart';

class DayForecastView extends StatelessWidget {
  final WeatherModelResultDaily? resultDaily;
  final WeatherModelEntity entity;

  const DayForecastView({Key? key, required this.resultDaily, required this.entity})
      : super(key: key);

  String _getWeatherDesc(int index) {
    if (resultDaily == null ||
        resultDaily!.skycon08h20h == null ||
        resultDaily!.skycon08h20h!.isEmpty ||
        index >= resultDaily!.skycon08h20h!.length) {
      return "";
    }
    if (resultDaily!.skycon20h32h == null ||
        resultDaily!.skycon20h32h!.isEmpty ||
        index >= resultDaily!.skycon20h32h!.length) {
      return "";
    }
    var dayDesc = WeatherUtils.convertDesc(resultDaily!.skycon08h20h![index].value);
    var nightDesc = WeatherUtils.convertDesc(resultDaily!.skycon20h32h![index].value);
    if (dayDesc == nightDesc) {
      return "$dayDesc";
    }
    return "$dayDesc To $nightDesc";
  }

  String _getTemperatureDesc(int index) {
    if (resultDaily == null ||
        resultDaily!.temperature == null ||
        resultDaily!.temperature!.isEmpty ||
        index >= resultDaily!.temperature!.length) {
      return "";
    }
    var dayTemperature = resultDaily!.temperature![index].max?.toInt();
    var nightTemperature = resultDaily!.temperature![index].min?.toInt();
    return "$dayTemperature°/$nightTemperature°";
  }

  String _getWeatherDayDesc(int index) {
    if (resultDaily == null) {
      return "";
    }
    return WeatherUtils.getWeatherDayDesc(resultDaily!.temperature![index].date!);
  }

  String _getAqiDesc(int index) {
    if (resultDaily == null ||
        resultDaily?.airQuality == null ||
        resultDaily!.airQuality?.aqi == null ||
        resultDaily!.airQuality!.aqi!.isEmpty ||
        index >= resultDaily!.airQuality!.aqi!.length) {
      return "";
    }
    return WeatherUtils.getAqiDesc(resultDaily!.airQuality!.aqi![index].max!.chn!);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            return BlurWidget(
              child: Container(
                padding: const EdgeInsets.all(12),
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(_getWeatherDayDesc(index),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                        const Spacer(),
                        Text(_getTemperatureDesc(index),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Text(_getAqiDesc(index),
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800)),
                    Text(_getWeatherDesc(index),
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                  ],
                ),
              ),
            );
          },
          itemCount: resultDaily?.skycon08h20h?.length ?? 0),
    );
  }
}
