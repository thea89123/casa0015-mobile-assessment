import 'package:evapp/screen/home/weather_model_entity.dart';
import 'package:evapp/widgets/blur_rect.dart';
import 'package:flutter/material.dart';

class WeatherAlter extends StatelessWidget {
  const WeatherAlter({Key? key, required this.alert}) : super(key: key);

  final WeatherModelResultAlert? alert;

  @override
  Widget build(BuildContext context) {
    return alert == null || alert!.content == null || alert!.content!.isEmpty
        ? const SizedBox.shrink()
        : BlurWidget(
            child: Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.all(12),
              child: Column(
                children: alert!.content!.map((e) {
                  return Text(
                    e.description ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  );
                }).toList(),
              ),
            ),
          );
  }
}
