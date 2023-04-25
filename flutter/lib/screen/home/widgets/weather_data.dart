import 'package:evapp/widgets/blur_rect.dart';
import 'package:flutter/material.dart';

import '../weather_model_entity.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({Key? key, required this.entity}) : super(key: key);

  final WeatherModelEntity entity;

  @override
  Widget build(BuildContext context) {
    final realtime = entity.result?.realtime;
    final ultraviolet = realtime?.lifeIndex?.ultraviolet?.desc ?? '';
    final airQuality = realtime?.airQuality?.description?.usa ?? '';
    //湿度、降水、紫外线、空气质量、日出日落时间吧
    return BlurWidget(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _DataItem(title: 'humidity', data: '${((realtime?.humidity ?? 0) * 100).toInt()}%'),
            _DataItem(title: 'precipitation', data: '${realtime?.precipitation?.local?.intensity ?? 0}mm'),
            _DataItem(title: 'airQuality', data: airQuality.isEmpty ? '-' : airQuality),
            _DataItem(title: 'ultraviolet', data: ultraviolet.isEmpty ? '-' : ultraviolet),
          ],
        ),
      ),
    );
  }
}

class _DataItem extends StatelessWidget {
  const _DataItem({Key? key, required this.title, required this.data}) : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            data,
            style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
