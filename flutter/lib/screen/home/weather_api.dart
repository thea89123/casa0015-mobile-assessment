import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../generated/json/weather_model_entity.g.dart';
import 'weather_model_entity.dart';

Future<WeatherModelEntity?> getCurrentWeather(LatLng latLng) async {
  debugPrint('url: https://api.caiyunapp.com/v2.5/TAkhjf8d1nlSlspN/${latLng.longitude},${latLng.latitude}/weather.json?lang=en_US&unit=metric&alert=true');
  final response = await Dio().get('https://api.caiyunapp.com/v2.5/TAkhjf8d1nlSlspN/${latLng.longitude},${latLng.latitude}/weather.json?lang=en_US&unit=metric&alert=true');
  if (response.statusCode == 200) {
    return $WeatherModelEntityFromJson(response.data);
  }
  return null;
}