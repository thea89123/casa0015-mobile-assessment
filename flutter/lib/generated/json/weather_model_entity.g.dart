import 'package:evapp/generated/json/base/json_convert_content.dart';
import 'package:evapp/screen/home/weather_model_entity.dart';

WeatherModelEntity $WeatherModelEntityFromJson(Map<String, dynamic> json) {
	final WeatherModelEntity weatherModelEntity = WeatherModelEntity();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelEntity.status = status;
	}
	final String? apiVersion = jsonConvert.convert<String>(json['api_version']);
	if (apiVersion != null) {
		weatherModelEntity.apiVersion = apiVersion;
	}
	final String? apiStatus = jsonConvert.convert<String>(json['api_status']);
	if (apiStatus != null) {
		weatherModelEntity.apiStatus = apiStatus;
	}
	final String? lang = jsonConvert.convert<String>(json['lang']);
	if (lang != null) {
		weatherModelEntity.lang = lang;
	}
	final String? unit = jsonConvert.convert<String>(json['unit']);
	if (unit != null) {
		weatherModelEntity.unit = unit;
	}
	final int? tzshift = jsonConvert.convert<int>(json['tzshift']);
	if (tzshift != null) {
		weatherModelEntity.tzshift = tzshift;
	}
	final String? timezone = jsonConvert.convert<String>(json['timezone']);
	if (timezone != null) {
		weatherModelEntity.timezone = timezone;
	}
	final int? serverTime = jsonConvert.convert<int>(json['server_time']);
	if (serverTime != null) {
		weatherModelEntity.serverTime = serverTime;
	}
	final List<double>? location = jsonConvert.convertListNotNull<double>(json['location']);
	if (location != null) {
		weatherModelEntity.location = location;
	}
	final WeatherModelResult? result = jsonConvert.convert<WeatherModelResult>(json['result']);
	if (result != null) {
		weatherModelEntity.result = result;
	}
	return weatherModelEntity;
}

Map<String, dynamic> $WeatherModelEntityToJson(WeatherModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['api_version'] = entity.apiVersion;
	data['api_status'] = entity.apiStatus;
	data['lang'] = entity.lang;
	data['unit'] = entity.unit;
	data['tzshift'] = entity.tzshift;
	data['timezone'] = entity.timezone;
	data['server_time'] = entity.serverTime;
	data['location'] =  entity.location;
	data['result'] = entity.result?.toJson();
	return data;
}

WeatherModelResult $WeatherModelResultFromJson(Map<String, dynamic> json) {
	final WeatherModelResult weatherModelResult = WeatherModelResult();
	final WeatherModelResultAlert? alert = jsonConvert.convert<WeatherModelResultAlert>(json['alert']);
	if (alert != null) {
		weatherModelResult.alert = alert;
	}
	final WeatherModelResultRealtime? realtime = jsonConvert.convert<WeatherModelResultRealtime>(json['realtime']);
	if (realtime != null) {
		weatherModelResult.realtime = realtime;
	}
	final WeatherModelResultMinutely? minutely = jsonConvert.convert<WeatherModelResultMinutely>(json['minutely']);
	if (minutely != null) {
		weatherModelResult.minutely = minutely;
	}
	final WeatherModelResultHourly? hourly = jsonConvert.convert<WeatherModelResultHourly>(json['hourly']);
	if (hourly != null) {
		weatherModelResult.hourly = hourly;
	}
	final WeatherModelResultDaily? daily = jsonConvert.convert<WeatherModelResultDaily>(json['daily']);
	if (daily != null) {
		weatherModelResult.daily = daily;
	}
	final int? primary = jsonConvert.convert<int>(json['primary']);
	if (primary != null) {
		weatherModelResult.primary = primary;
	}
	final String? forecastKeypoint = jsonConvert.convert<String>(json['forecast_keypoint']);
	if (forecastKeypoint != null) {
		weatherModelResult.forecastKeypoint = forecastKeypoint;
	}
	return weatherModelResult;
}

Map<String, dynamic> $WeatherModelResultToJson(WeatherModelResult entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['alert'] = entity.alert?.toJson();
	data['realtime'] = entity.realtime?.toJson();
	data['minutely'] = entity.minutely?.toJson();
	data['hourly'] = entity.hourly?.toJson();
	data['daily'] = entity.daily?.toJson();
	data['primary'] = entity.primary;
	data['forecast_keypoint'] = entity.forecastKeypoint;
	return data;
}

WeatherModelResultAlert $WeatherModelResultAlertFromJson(Map<String, dynamic> json) {
	final WeatherModelResultAlert weatherModelResultAlert = WeatherModelResultAlert();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultAlert.status = status;
	}
	final List<WeatherModelResultAlertContent>? content = jsonConvert.convertListNotNull<WeatherModelResultAlertContent>(json['content']);
	if (content != null) {
		weatherModelResultAlert.content = content;
	}
	return weatherModelResultAlert;
}

Map<String, dynamic> $WeatherModelResultAlertToJson(WeatherModelResultAlert entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['content'] =  entity.content?.map((v) => v.toJson()).toList();
	return data;
}

WeatherModelResultAlertContent $WeatherModelResultAlertContentFromJson(Map<String, dynamic> json) {
	final WeatherModelResultAlertContent weatherModelResultAlertContent = WeatherModelResultAlertContent();
	final String? province = jsonConvert.convert<String>(json['province']);
	if (province != null) {
		weatherModelResultAlertContent.province = province;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultAlertContent.status = status;
	}
	final String? code = jsonConvert.convert<String>(json['code']);
	if (code != null) {
		weatherModelResultAlertContent.code = code;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		weatherModelResultAlertContent.description = description;
	}
	final String? regionId = jsonConvert.convert<String>(json['regionId']);
	if (regionId != null) {
		weatherModelResultAlertContent.regionId = regionId;
	}
	final String? county = jsonConvert.convert<String>(json['county']);
	if (county != null) {
		weatherModelResultAlertContent.county = county;
	}
	final int? pubtimestamp = jsonConvert.convert<int>(json['pubtimestamp']);
	if (pubtimestamp != null) {
		weatherModelResultAlertContent.pubtimestamp = pubtimestamp;
	}
	final List<double>? latlon = jsonConvert.convertListNotNull<double>(json['latlon']);
	if (latlon != null) {
		weatherModelResultAlertContent.latlon = latlon;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		weatherModelResultAlertContent.city = city;
	}
	final String? alertId = jsonConvert.convert<String>(json['alertId']);
	if (alertId != null) {
		weatherModelResultAlertContent.alertId = alertId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		weatherModelResultAlertContent.title = title;
	}
	final String? adcode = jsonConvert.convert<String>(json['adcode']);
	if (adcode != null) {
		weatherModelResultAlertContent.adcode = adcode;
	}
	final String? xSource = jsonConvert.convert<String>(json['source']);
	if (xSource != null) {
		weatherModelResultAlertContent.xSource = xSource;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		weatherModelResultAlertContent.location = location;
	}
	final String? requestStatus = jsonConvert.convert<String>(json['request_status']);
	if (requestStatus != null) {
		weatherModelResultAlertContent.requestStatus = requestStatus;
	}
	return weatherModelResultAlertContent;
}

Map<String, dynamic> $WeatherModelResultAlertContentToJson(WeatherModelResultAlertContent entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['province'] = entity.province;
	data['status'] = entity.status;
	data['code'] = entity.code;
	data['description'] = entity.description;
	data['regionId'] = entity.regionId;
	data['county'] = entity.county;
	data['pubtimestamp'] = entity.pubtimestamp;
	data['latlon'] =  entity.latlon;
	data['city'] = entity.city;
	data['alertId'] = entity.alertId;
	data['title'] = entity.title;
	data['adcode'] = entity.adcode;
	data['source'] = entity.xSource;
	data['location'] = entity.location;
	data['request_status'] = entity.requestStatus;
	return data;
}

WeatherModelResultRealtime $WeatherModelResultRealtimeFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtime weatherModelResultRealtime = WeatherModelResultRealtime();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultRealtime.status = status;
	}
	final double? temperature = jsonConvert.convert<double>(json['temperature']);
	if (temperature != null) {
		weatherModelResultRealtime.temperature = temperature;
	}
	final double? humidity = jsonConvert.convert<double>(json['humidity']);
	if (humidity != null) {
		weatherModelResultRealtime.humidity = humidity;
	}
	final double? cloudrate = jsonConvert.convert<double>(json['cloudrate']);
	if (cloudrate != null) {
		weatherModelResultRealtime.cloudrate = cloudrate;
	}
	final String? skycon = jsonConvert.convert<String>(json['skycon']);
	if (skycon != null) {
		weatherModelResultRealtime.skycon = skycon;
	}
	final double? visibility = jsonConvert.convert<double>(json['visibility']);
	if (visibility != null) {
		weatherModelResultRealtime.visibility = visibility;
	}
	final double? dswrf = jsonConvert.convert<double>(json['dswrf']);
	if (dswrf != null) {
		weatherModelResultRealtime.dswrf = dswrf;
	}
	final WeatherModelResultRealtimeWind? wind = jsonConvert.convert<WeatherModelResultRealtimeWind>(json['wind']);
	if (wind != null) {
		weatherModelResultRealtime.wind = wind;
	}
	final double? pressure = jsonConvert.convert<double>(json['pressure']);
	if (pressure != null) {
		weatherModelResultRealtime.pressure = pressure;
	}
	final double? apparentTemperature = jsonConvert.convert<double>(json['apparent_temperature']);
	if (apparentTemperature != null) {
		weatherModelResultRealtime.apparentTemperature = apparentTemperature;
	}
	final WeatherModelResultRealtimePrecipitation? precipitation = jsonConvert.convert<WeatherModelResultRealtimePrecipitation>(json['precipitation']);
	if (precipitation != null) {
		weatherModelResultRealtime.precipitation = precipitation;
	}
	final WeatherModelResultRealtimeAirQuality? airQuality = jsonConvert.convert<WeatherModelResultRealtimeAirQuality>(json['air_quality']);
	if (airQuality != null) {
		weatherModelResultRealtime.airQuality = airQuality;
	}
	final WeatherModelResultRealtimeLifeIndex? lifeIndex = jsonConvert.convert<WeatherModelResultRealtimeLifeIndex>(json['life_index']);
	if (lifeIndex != null) {
		weatherModelResultRealtime.lifeIndex = lifeIndex;
	}
	return weatherModelResultRealtime;
}

Map<String, dynamic> $WeatherModelResultRealtimeToJson(WeatherModelResultRealtime entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['temperature'] = entity.temperature;
	data['humidity'] = entity.humidity;
	data['cloudrate'] = entity.cloudrate;
	data['skycon'] = entity.skycon;
	data['visibility'] = entity.visibility;
	data['dswrf'] = entity.dswrf;
	data['wind'] = entity.wind?.toJson();
	data['pressure'] = entity.pressure;
	data['apparent_temperature'] = entity.apparentTemperature;
	data['precipitation'] = entity.precipitation?.toJson();
	data['air_quality'] = entity.airQuality?.toJson();
	data['life_index'] = entity.lifeIndex?.toJson();
	return data;
}

WeatherModelResultRealtimeWind $WeatherModelResultRealtimeWindFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeWind weatherModelResultRealtimeWind = WeatherModelResultRealtimeWind();
	final double? speed = jsonConvert.convert<double>(json['speed']);
	if (speed != null) {
		weatherModelResultRealtimeWind.speed = speed;
	}
	final double? direction = jsonConvert.convert<double>(json['direction']);
	if (direction != null) {
		weatherModelResultRealtimeWind.direction = direction;
	}
	return weatherModelResultRealtimeWind;
}

Map<String, dynamic> $WeatherModelResultRealtimeWindToJson(WeatherModelResultRealtimeWind entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['speed'] = entity.speed;
	data['direction'] = entity.direction;
	return data;
}

WeatherModelResultRealtimePrecipitation $WeatherModelResultRealtimePrecipitationFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimePrecipitation weatherModelResultRealtimePrecipitation = WeatherModelResultRealtimePrecipitation();
	final WeatherModelResultRealtimePrecipitationLocal? local = jsonConvert.convert<WeatherModelResultRealtimePrecipitationLocal>(json['local']);
	if (local != null) {
		weatherModelResultRealtimePrecipitation.local = local;
	}
	final WeatherModelResultRealtimePrecipitationNearest? nearest = jsonConvert.convert<WeatherModelResultRealtimePrecipitationNearest>(json['nearest']);
	if (nearest != null) {
		weatherModelResultRealtimePrecipitation.nearest = nearest;
	}
	return weatherModelResultRealtimePrecipitation;
}

Map<String, dynamic> $WeatherModelResultRealtimePrecipitationToJson(WeatherModelResultRealtimePrecipitation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['local'] = entity.local?.toJson();
	data['nearest'] = entity.nearest?.toJson();
	return data;
}

WeatherModelResultRealtimePrecipitationLocal $WeatherModelResultRealtimePrecipitationLocalFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimePrecipitationLocal weatherModelResultRealtimePrecipitationLocal = WeatherModelResultRealtimePrecipitationLocal();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultRealtimePrecipitationLocal.status = status;
	}
	final String? datasource = jsonConvert.convert<String>(json['datasource']);
	if (datasource != null) {
		weatherModelResultRealtimePrecipitationLocal.datasource = datasource;
	}
	final double? intensity = jsonConvert.convert<double>(json['intensity']);
	if (intensity != null) {
		weatherModelResultRealtimePrecipitationLocal.intensity = intensity;
	}
	return weatherModelResultRealtimePrecipitationLocal;
}

Map<String, dynamic> $WeatherModelResultRealtimePrecipitationLocalToJson(WeatherModelResultRealtimePrecipitationLocal entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['datasource'] = entity.datasource;
	data['intensity'] = entity.intensity;
	return data;
}

WeatherModelResultRealtimePrecipitationNearest $WeatherModelResultRealtimePrecipitationNearestFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimePrecipitationNearest weatherModelResultRealtimePrecipitationNearest = WeatherModelResultRealtimePrecipitationNearest();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultRealtimePrecipitationNearest.status = status;
	}
	final double? distance = jsonConvert.convert<double>(json['distance']);
	if (distance != null) {
		weatherModelResultRealtimePrecipitationNearest.distance = distance;
	}
	final double? intensity = jsonConvert.convert<double>(json['intensity']);
	if (intensity != null) {
		weatherModelResultRealtimePrecipitationNearest.intensity = intensity;
	}
	return weatherModelResultRealtimePrecipitationNearest;
}

Map<String, dynamic> $WeatherModelResultRealtimePrecipitationNearestToJson(WeatherModelResultRealtimePrecipitationNearest entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['distance'] = entity.distance;
	data['intensity'] = entity.intensity;
	return data;
}

WeatherModelResultRealtimeAirQuality $WeatherModelResultRealtimeAirQualityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeAirQuality weatherModelResultRealtimeAirQuality = WeatherModelResultRealtimeAirQuality();
	final int? pm25 = jsonConvert.convert<int>(json['pm25']);
	if (pm25 != null) {
		weatherModelResultRealtimeAirQuality.pm25 = pm25;
	}
	final int? pm10 = jsonConvert.convert<int>(json['pm10']);
	if (pm10 != null) {
		weatherModelResultRealtimeAirQuality.pm10 = pm10;
	}
	final int? o3 = jsonConvert.convert<int>(json['o3']);
	if (o3 != null) {
		weatherModelResultRealtimeAirQuality.o3 = o3;
	}
	final int? so2 = jsonConvert.convert<int>(json['so2']);
	if (so2 != null) {
		weatherModelResultRealtimeAirQuality.so2 = so2;
	}
	final int? no2 = jsonConvert.convert<int>(json['no2']);
	if (no2 != null) {
		weatherModelResultRealtimeAirQuality.no2 = no2;
	}
	final double? co = jsonConvert.convert<double>(json['co']);
	if (co != null) {
		weatherModelResultRealtimeAirQuality.co = co;
	}
	final WeatherModelResultRealtimeAirQualityAqi? aqi = jsonConvert.convert<WeatherModelResultRealtimeAirQualityAqi>(json['aqi']);
	if (aqi != null) {
		weatherModelResultRealtimeAirQuality.aqi = aqi;
	}
	final WeatherModelResultRealtimeAirQualityDescription? description = jsonConvert.convert<WeatherModelResultRealtimeAirQualityDescription>(json['description']);
	if (description != null) {
		weatherModelResultRealtimeAirQuality.description = description;
	}
	return weatherModelResultRealtimeAirQuality;
}

Map<String, dynamic> $WeatherModelResultRealtimeAirQualityToJson(WeatherModelResultRealtimeAirQuality entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['pm25'] = entity.pm25;
	data['pm10'] = entity.pm10;
	data['o3'] = entity.o3;
	data['so2'] = entity.so2;
	data['no2'] = entity.no2;
	data['co'] = entity.co;
	data['aqi'] = entity.aqi?.toJson();
	data['description'] = entity.description?.toJson();
	return data;
}

WeatherModelResultRealtimeAirQualityAqi $WeatherModelResultRealtimeAirQualityAqiFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeAirQualityAqi weatherModelResultRealtimeAirQualityAqi = WeatherModelResultRealtimeAirQualityAqi();
	final int? chn = jsonConvert.convert<int>(json['chn']);
	if (chn != null) {
		weatherModelResultRealtimeAirQualityAqi.chn = chn;
	}
	final int? usa = jsonConvert.convert<int>(json['usa']);
	if (usa != null) {
		weatherModelResultRealtimeAirQualityAqi.usa = usa;
	}
	return weatherModelResultRealtimeAirQualityAqi;
}

Map<String, dynamic> $WeatherModelResultRealtimeAirQualityAqiToJson(WeatherModelResultRealtimeAirQualityAqi entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['chn'] = entity.chn;
	data['usa'] = entity.usa;
	return data;
}

WeatherModelResultRealtimeAirQualityDescription $WeatherModelResultRealtimeAirQualityDescriptionFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeAirQualityDescription weatherModelResultRealtimeAirQualityDescription = WeatherModelResultRealtimeAirQualityDescription();
	final String? chn = jsonConvert.convert<String>(json['chn']);
	if (chn != null) {
		weatherModelResultRealtimeAirQualityDescription.chn = chn;
	}
	final String? usa = jsonConvert.convert<String>(json['usa']);
	if (usa != null) {
		weatherModelResultRealtimeAirQualityDescription.usa = usa;
	}
	return weatherModelResultRealtimeAirQualityDescription;
}

Map<String, dynamic> $WeatherModelResultRealtimeAirQualityDescriptionToJson(WeatherModelResultRealtimeAirQualityDescription entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['chn'] = entity.chn;
	data['usa'] = entity.usa;
	return data;
}

WeatherModelResultRealtimeLifeIndex $WeatherModelResultRealtimeLifeIndexFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeLifeIndex weatherModelResultRealtimeLifeIndex = WeatherModelResultRealtimeLifeIndex();
	final WeatherModelResultRealtimeLifeIndexUltraviolet? ultraviolet = jsonConvert.convert<WeatherModelResultRealtimeLifeIndexUltraviolet>(json['ultraviolet']);
	if (ultraviolet != null) {
		weatherModelResultRealtimeLifeIndex.ultraviolet = ultraviolet;
	}
	final WeatherModelResultRealtimeLifeIndexComfort? comfort = jsonConvert.convert<WeatherModelResultRealtimeLifeIndexComfort>(json['comfort']);
	if (comfort != null) {
		weatherModelResultRealtimeLifeIndex.comfort = comfort;
	}
	return weatherModelResultRealtimeLifeIndex;
}

Map<String, dynamic> $WeatherModelResultRealtimeLifeIndexToJson(WeatherModelResultRealtimeLifeIndex entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ultraviolet'] = entity.ultraviolet?.toJson();
	data['comfort'] = entity.comfort?.toJson();
	return data;
}

WeatherModelResultRealtimeLifeIndexUltraviolet $WeatherModelResultRealtimeLifeIndexUltravioletFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeLifeIndexUltraviolet weatherModelResultRealtimeLifeIndexUltraviolet = WeatherModelResultRealtimeLifeIndexUltraviolet();
	final double? index = jsonConvert.convert<double>(json['index']);
	if (index != null) {
		weatherModelResultRealtimeLifeIndexUltraviolet.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultRealtimeLifeIndexUltraviolet.desc = desc;
	}
	return weatherModelResultRealtimeLifeIndexUltraviolet;
}

Map<String, dynamic> $WeatherModelResultRealtimeLifeIndexUltravioletToJson(WeatherModelResultRealtimeLifeIndexUltraviolet entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}

WeatherModelResultRealtimeLifeIndexComfort $WeatherModelResultRealtimeLifeIndexComfortFromJson(Map<String, dynamic> json) {
	final WeatherModelResultRealtimeLifeIndexComfort weatherModelResultRealtimeLifeIndexComfort = WeatherModelResultRealtimeLifeIndexComfort();
	final int? index = jsonConvert.convert<int>(json['index']);
	if (index != null) {
		weatherModelResultRealtimeLifeIndexComfort.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultRealtimeLifeIndexComfort.desc = desc;
	}
	return weatherModelResultRealtimeLifeIndexComfort;
}

Map<String, dynamic> $WeatherModelResultRealtimeLifeIndexComfortToJson(WeatherModelResultRealtimeLifeIndexComfort entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}

WeatherModelResultMinutely $WeatherModelResultMinutelyFromJson(Map<String, dynamic> json) {
	final WeatherModelResultMinutely weatherModelResultMinutely = WeatherModelResultMinutely();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultMinutely.status = status;
	}
	final String? datasource = jsonConvert.convert<String>(json['datasource']);
	if (datasource != null) {
		weatherModelResultMinutely.datasource = datasource;
	}
	final List<double>? precipitation2h = jsonConvert.convertListNotNull<double>(json['precipitation_2h']);
	if (precipitation2h != null) {
		weatherModelResultMinutely.precipitation2h = precipitation2h;
	}
	final List<double>? precipitation = jsonConvert.convertListNotNull<double>(json['precipitation']);
	if (precipitation != null) {
		weatherModelResultMinutely.precipitation = precipitation;
	}
	final List<double>? probability = jsonConvert.convertListNotNull<double>(json['probability']);
	if (probability != null) {
		weatherModelResultMinutely.probability = probability;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		weatherModelResultMinutely.description = description;
	}
	return weatherModelResultMinutely;
}

Map<String, dynamic> $WeatherModelResultMinutelyToJson(WeatherModelResultMinutely entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['datasource'] = entity.datasource;
	data['precipitation_2h'] =  entity.precipitation2h;
	data['precipitation'] =  entity.precipitation;
	data['probability'] =  entity.probability;
	data['description'] = entity.description;
	return data;
}

WeatherModelResultHourly $WeatherModelResultHourlyFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourly weatherModelResultHourly = WeatherModelResultHourly();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultHourly.status = status;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		weatherModelResultHourly.description = description;
	}
	final List<WeatherModelResultHourlyPrecipitation>? precipitation = jsonConvert.convertListNotNull<WeatherModelResultHourlyPrecipitation>(json['precipitation']);
	if (precipitation != null) {
		weatherModelResultHourly.precipitation = precipitation;
	}
	final List<WeatherModelResultHourlyTemperature>? temperature = jsonConvert.convertListNotNull<WeatherModelResultHourlyTemperature>(json['temperature']);
	if (temperature != null) {
		weatherModelResultHourly.temperature = temperature;
	}
	final List<WeatherModelResultHourlyWind>? wind = jsonConvert.convertListNotNull<WeatherModelResultHourlyWind>(json['wind']);
	if (wind != null) {
		weatherModelResultHourly.wind = wind;
	}
	final List<WeatherModelResultHourlyHumidity>? humidity = jsonConvert.convertListNotNull<WeatherModelResultHourlyHumidity>(json['humidity']);
	if (humidity != null) {
		weatherModelResultHourly.humidity = humidity;
	}
	final List<WeatherModelResultHourlyCloudrate>? cloudrate = jsonConvert.convertListNotNull<WeatherModelResultHourlyCloudrate>(json['cloudrate']);
	if (cloudrate != null) {
		weatherModelResultHourly.cloudrate = cloudrate;
	}
	final List<WeatherModelResultHourlySkycon>? skycon = jsonConvert.convertListNotNull<WeatherModelResultHourlySkycon>(json['skycon']);
	if (skycon != null) {
		weatherModelResultHourly.skycon = skycon;
	}
	final List<WeatherModelResultHourlyPressure>? pressure = jsonConvert.convertListNotNull<WeatherModelResultHourlyPressure>(json['pressure']);
	if (pressure != null) {
		weatherModelResultHourly.pressure = pressure;
	}
	final List<WeatherModelResultHourlyVisibility>? visibility = jsonConvert.convertListNotNull<WeatherModelResultHourlyVisibility>(json['visibility']);
	if (visibility != null) {
		weatherModelResultHourly.visibility = visibility;
	}
	final List<WeatherModelResultHourlyDswrf>? dswrf = jsonConvert.convertListNotNull<WeatherModelResultHourlyDswrf>(json['dswrf']);
	if (dswrf != null) {
		weatherModelResultHourly.dswrf = dswrf;
	}
	final WeatherModelResultHourlyAirQuality? airQuality = jsonConvert.convert<WeatherModelResultHourlyAirQuality>(json['air_quality']);
	if (airQuality != null) {
		weatherModelResultHourly.airQuality = airQuality;
	}
	return weatherModelResultHourly;
}

Map<String, dynamic> $WeatherModelResultHourlyToJson(WeatherModelResultHourly entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['description'] = entity.description;
	data['precipitation'] =  entity.precipitation?.map((v) => v.toJson()).toList();
	data['temperature'] =  entity.temperature?.map((v) => v.toJson()).toList();
	data['wind'] =  entity.wind?.map((v) => v.toJson()).toList();
	data['humidity'] =  entity.humidity?.map((v) => v.toJson()).toList();
	data['cloudrate'] =  entity.cloudrate?.map((v) => v.toJson()).toList();
	data['skycon'] =  entity.skycon?.map((v) => v.toJson()).toList();
	data['pressure'] =  entity.pressure?.map((v) => v.toJson()).toList();
	data['visibility'] =  entity.visibility?.map((v) => v.toJson()).toList();
	data['dswrf'] =  entity.dswrf?.map((v) => v.toJson()).toList();
	data['air_quality'] = entity.airQuality?.toJson();
	return data;
}

WeatherModelResultHourlyPrecipitation $WeatherModelResultHourlyPrecipitationFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyPrecipitation weatherModelResultHourlyPrecipitation = WeatherModelResultHourlyPrecipitation();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyPrecipitation.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyPrecipitation.value = value;
	}
	return weatherModelResultHourlyPrecipitation;
}

Map<String, dynamic> $WeatherModelResultHourlyPrecipitationToJson(WeatherModelResultHourlyPrecipitation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyTemperature $WeatherModelResultHourlyTemperatureFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyTemperature weatherModelResultHourlyTemperature = WeatherModelResultHourlyTemperature();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyTemperature.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyTemperature.value = value;
	}
	return weatherModelResultHourlyTemperature;
}

Map<String, dynamic> $WeatherModelResultHourlyTemperatureToJson(WeatherModelResultHourlyTemperature entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyWind $WeatherModelResultHourlyWindFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyWind weatherModelResultHourlyWind = WeatherModelResultHourlyWind();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyWind.datetime = datetime;
	}
	final double? speed = jsonConvert.convert<double>(json['speed']);
	if (speed != null) {
		weatherModelResultHourlyWind.speed = speed;
	}
	final double? direction = jsonConvert.convert<double>(json['direction']);
	if (direction != null) {
		weatherModelResultHourlyWind.direction = direction;
	}
	return weatherModelResultHourlyWind;
}

Map<String, dynamic> $WeatherModelResultHourlyWindToJson(WeatherModelResultHourlyWind entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['speed'] = entity.speed;
	data['direction'] = entity.direction;
	return data;
}

WeatherModelResultHourlyHumidity $WeatherModelResultHourlyHumidityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyHumidity weatherModelResultHourlyHumidity = WeatherModelResultHourlyHumidity();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyHumidity.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyHumidity.value = value;
	}
	return weatherModelResultHourlyHumidity;
}

Map<String, dynamic> $WeatherModelResultHourlyHumidityToJson(WeatherModelResultHourlyHumidity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyCloudrate $WeatherModelResultHourlyCloudrateFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyCloudrate weatherModelResultHourlyCloudrate = WeatherModelResultHourlyCloudrate();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyCloudrate.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyCloudrate.value = value;
	}
	return weatherModelResultHourlyCloudrate;
}

Map<String, dynamic> $WeatherModelResultHourlyCloudrateToJson(WeatherModelResultHourlyCloudrate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlySkycon $WeatherModelResultHourlySkyconFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlySkycon weatherModelResultHourlySkycon = WeatherModelResultHourlySkycon();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlySkycon.datetime = datetime;
	}
	final String? value = jsonConvert.convert<String>(json['value']);
	if (value != null) {
		weatherModelResultHourlySkycon.value = value;
	}
	return weatherModelResultHourlySkycon;
}

Map<String, dynamic> $WeatherModelResultHourlySkyconToJson(WeatherModelResultHourlySkycon entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyPressure $WeatherModelResultHourlyPressureFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyPressure weatherModelResultHourlyPressure = WeatherModelResultHourlyPressure();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyPressure.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyPressure.value = value;
	}
	return weatherModelResultHourlyPressure;
}

Map<String, dynamic> $WeatherModelResultHourlyPressureToJson(WeatherModelResultHourlyPressure entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyVisibility $WeatherModelResultHourlyVisibilityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyVisibility weatherModelResultHourlyVisibility = WeatherModelResultHourlyVisibility();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyVisibility.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyVisibility.value = value;
	}
	return weatherModelResultHourlyVisibility;
}

Map<String, dynamic> $WeatherModelResultHourlyVisibilityToJson(WeatherModelResultHourlyVisibility entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyDswrf $WeatherModelResultHourlyDswrfFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyDswrf weatherModelResultHourlyDswrf = WeatherModelResultHourlyDswrf();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyDswrf.datetime = datetime;
	}
	final double? value = jsonConvert.convert<double>(json['value']);
	if (value != null) {
		weatherModelResultHourlyDswrf.value = value;
	}
	return weatherModelResultHourlyDswrf;
}

Map<String, dynamic> $WeatherModelResultHourlyDswrfToJson(WeatherModelResultHourlyDswrf entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultHourlyAirQuality $WeatherModelResultHourlyAirQualityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyAirQuality weatherModelResultHourlyAirQuality = WeatherModelResultHourlyAirQuality();
	final List<WeatherModelResultHourlyAirQualityAqi>? aqi = jsonConvert.convertListNotNull<WeatherModelResultHourlyAirQualityAqi>(json['aqi']);
	if (aqi != null) {
		weatherModelResultHourlyAirQuality.aqi = aqi;
	}
	final List<WeatherModelResultHourlyAirQualityPm25>? pm25 = jsonConvert.convertListNotNull<WeatherModelResultHourlyAirQualityPm25>(json['pm25']);
	if (pm25 != null) {
		weatherModelResultHourlyAirQuality.pm25 = pm25;
	}
	return weatherModelResultHourlyAirQuality;
}

Map<String, dynamic> $WeatherModelResultHourlyAirQualityToJson(WeatherModelResultHourlyAirQuality entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aqi'] =  entity.aqi?.map((v) => v.toJson()).toList();
	data['pm25'] =  entity.pm25?.map((v) => v.toJson()).toList();
	return data;
}

WeatherModelResultHourlyAirQualityAqi $WeatherModelResultHourlyAirQualityAqiFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyAirQualityAqi weatherModelResultHourlyAirQualityAqi = WeatherModelResultHourlyAirQualityAqi();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyAirQualityAqi.datetime = datetime;
	}
	final WeatherModelResultHourlyAirQualityAqiValue? value = jsonConvert.convert<WeatherModelResultHourlyAirQualityAqiValue>(json['value']);
	if (value != null) {
		weatherModelResultHourlyAirQualityAqi.value = value;
	}
	return weatherModelResultHourlyAirQualityAqi;
}

Map<String, dynamic> $WeatherModelResultHourlyAirQualityAqiToJson(WeatherModelResultHourlyAirQualityAqi entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value?.toJson();
	return data;
}

WeatherModelResultHourlyAirQualityAqiValue $WeatherModelResultHourlyAirQualityAqiValueFromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyAirQualityAqiValue weatherModelResultHourlyAirQualityAqiValue = WeatherModelResultHourlyAirQualityAqiValue();
	final int? chn = jsonConvert.convert<int>(json['chn']);
	if (chn != null) {
		weatherModelResultHourlyAirQualityAqiValue.chn = chn;
	}
	final int? usa = jsonConvert.convert<int>(json['usa']);
	if (usa != null) {
		weatherModelResultHourlyAirQualityAqiValue.usa = usa;
	}
	return weatherModelResultHourlyAirQualityAqiValue;
}

Map<String, dynamic> $WeatherModelResultHourlyAirQualityAqiValueToJson(WeatherModelResultHourlyAirQualityAqiValue entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['chn'] = entity.chn;
	data['usa'] = entity.usa;
	return data;
}

WeatherModelResultHourlyAirQualityPm25 $WeatherModelResultHourlyAirQualityPm25FromJson(Map<String, dynamic> json) {
	final WeatherModelResultHourlyAirQualityPm25 weatherModelResultHourlyAirQualityPm25 = WeatherModelResultHourlyAirQualityPm25();
	final String? datetime = jsonConvert.convert<String>(json['datetime']);
	if (datetime != null) {
		weatherModelResultHourlyAirQualityPm25.datetime = datetime;
	}
	final int? value = jsonConvert.convert<int>(json['value']);
	if (value != null) {
		weatherModelResultHourlyAirQualityPm25.value = value;
	}
	return weatherModelResultHourlyAirQualityPm25;
}

Map<String, dynamic> $WeatherModelResultHourlyAirQualityPm25ToJson(WeatherModelResultHourlyAirQualityPm25 entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['datetime'] = entity.datetime;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultDaily $WeatherModelResultDailyFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDaily weatherModelResultDaily = WeatherModelResultDaily();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		weatherModelResultDaily.status = status;
	}
	final List<WeatherModelResultDailyAstro>? astro = jsonConvert.convertListNotNull<WeatherModelResultDailyAstro>(json['astro']);
	if (astro != null) {
		weatherModelResultDaily.astro = astro;
	}
	final List<WeatherModelResultDailyPrecipitation>? precipitation = jsonConvert.convertListNotNull<WeatherModelResultDailyPrecipitation>(json['precipitation']);
	if (precipitation != null) {
		weatherModelResultDaily.precipitation = precipitation;
	}
	final List<WeatherModelResultDailyTemperature>? temperature = jsonConvert.convertListNotNull<WeatherModelResultDailyTemperature>(json['temperature']);
	if (temperature != null) {
		weatherModelResultDaily.temperature = temperature;
	}
	final List<WeatherModelResultDailyWind>? wind = jsonConvert.convertListNotNull<WeatherModelResultDailyWind>(json['wind']);
	if (wind != null) {
		weatherModelResultDaily.wind = wind;
	}
	final List<WeatherModelResultDailyHumidity>? humidity = jsonConvert.convertListNotNull<WeatherModelResultDailyHumidity>(json['humidity']);
	if (humidity != null) {
		weatherModelResultDaily.humidity = humidity;
	}
	final List<WeatherModelResultDailyCloudrate>? cloudrate = jsonConvert.convertListNotNull<WeatherModelResultDailyCloudrate>(json['cloudrate']);
	if (cloudrate != null) {
		weatherModelResultDaily.cloudrate = cloudrate;
	}
	final List<WeatherModelResultDailyPressure>? pressure = jsonConvert.convertListNotNull<WeatherModelResultDailyPressure>(json['pressure']);
	if (pressure != null) {
		weatherModelResultDaily.pressure = pressure;
	}
	final List<WeatherModelResultDailyVisibility>? visibility = jsonConvert.convertListNotNull<WeatherModelResultDailyVisibility>(json['visibility']);
	if (visibility != null) {
		weatherModelResultDaily.visibility = visibility;
	}
	final List<WeatherModelResultDailyDswrf>? dswrf = jsonConvert.convertListNotNull<WeatherModelResultDailyDswrf>(json['dswrf']);
	if (dswrf != null) {
		weatherModelResultDaily.dswrf = dswrf;
	}
	final WeatherModelResultDailyAirQuality? airQuality = jsonConvert.convert<WeatherModelResultDailyAirQuality>(json['air_quality']);
	if (airQuality != null) {
		weatherModelResultDaily.airQuality = airQuality;
	}
	final List<WeatherModelResultDailySkycon>? skycon = jsonConvert.convertListNotNull<WeatherModelResultDailySkycon>(json['skycon']);
	if (skycon != null) {
		weatherModelResultDaily.skycon = skycon;
	}
	final List<WeatherModelResultDailySkycon08h20h>? skycon08h20h = jsonConvert.convertListNotNull<WeatherModelResultDailySkycon08h20h>(json['skycon_08h_20h']);
	if (skycon08h20h != null) {
		weatherModelResultDaily.skycon08h20h = skycon08h20h;
	}
	final List<WeatherModelResultDailySkycon20h32h>? skycon20h32h = jsonConvert.convertListNotNull<WeatherModelResultDailySkycon20h32h>(json['skycon_20h_32h']);
	if (skycon20h32h != null) {
		weatherModelResultDaily.skycon20h32h = skycon20h32h;
	}
	final WeatherModelResultDailyLifeIndex? lifeIndex = jsonConvert.convert<WeatherModelResultDailyLifeIndex>(json['life_index']);
	if (lifeIndex != null) {
		weatherModelResultDaily.lifeIndex = lifeIndex;
	}
	return weatherModelResultDaily;
}

Map<String, dynamic> $WeatherModelResultDailyToJson(WeatherModelResultDaily entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['astro'] =  entity.astro?.map((v) => v.toJson()).toList();
	data['precipitation'] =  entity.precipitation?.map((v) => v.toJson()).toList();
	data['temperature'] =  entity.temperature?.map((v) => v.toJson()).toList();
	data['wind'] =  entity.wind?.map((v) => v.toJson()).toList();
	data['humidity'] =  entity.humidity?.map((v) => v.toJson()).toList();
	data['cloudrate'] =  entity.cloudrate?.map((v) => v.toJson()).toList();
	data['pressure'] =  entity.pressure?.map((v) => v.toJson()).toList();
	data['visibility'] =  entity.visibility?.map((v) => v.toJson()).toList();
	data['dswrf'] =  entity.dswrf?.map((v) => v.toJson()).toList();
	data['air_quality'] = entity.airQuality?.toJson();
	data['skycon'] =  entity.skycon?.map((v) => v.toJson()).toList();
	data['skycon_08h_20h'] =  entity.skycon08h20h?.map((v) => v.toJson()).toList();
	data['skycon_20h_32h'] =  entity.skycon20h32h?.map((v) => v.toJson()).toList();
	data['life_index'] = entity.lifeIndex?.toJson();
	return data;
}

WeatherModelResultDailyAstro $WeatherModelResultDailyAstroFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAstro weatherModelResultDailyAstro = WeatherModelResultDailyAstro();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyAstro.date = date;
	}
	final WeatherModelResultDailyAstroSunrise? sunrise = jsonConvert.convert<WeatherModelResultDailyAstroSunrise>(json['sunrise']);
	if (sunrise != null) {
		weatherModelResultDailyAstro.sunrise = sunrise;
	}
	final WeatherModelResultDailyAstroSunset? sunset = jsonConvert.convert<WeatherModelResultDailyAstroSunset>(json['sunset']);
	if (sunset != null) {
		weatherModelResultDailyAstro.sunset = sunset;
	}
	return weatherModelResultDailyAstro;
}

Map<String, dynamic> $WeatherModelResultDailyAstroToJson(WeatherModelResultDailyAstro entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['sunrise'] = entity.sunrise?.toJson();
	data['sunset'] = entity.sunset?.toJson();
	return data;
}

WeatherModelResultDailyAstroSunrise $WeatherModelResultDailyAstroSunriseFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAstroSunrise weatherModelResultDailyAstroSunrise = WeatherModelResultDailyAstroSunrise();
	final String? time = jsonConvert.convert<String>(json['time']);
	if (time != null) {
		weatherModelResultDailyAstroSunrise.time = time;
	}
	return weatherModelResultDailyAstroSunrise;
}

Map<String, dynamic> $WeatherModelResultDailyAstroSunriseToJson(WeatherModelResultDailyAstroSunrise entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['time'] = entity.time;
	return data;
}

WeatherModelResultDailyAstroSunset $WeatherModelResultDailyAstroSunsetFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAstroSunset weatherModelResultDailyAstroSunset = WeatherModelResultDailyAstroSunset();
	final String? time = jsonConvert.convert<String>(json['time']);
	if (time != null) {
		weatherModelResultDailyAstroSunset.time = time;
	}
	return weatherModelResultDailyAstroSunset;
}

Map<String, dynamic> $WeatherModelResultDailyAstroSunsetToJson(WeatherModelResultDailyAstroSunset entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['time'] = entity.time;
	return data;
}

WeatherModelResultDailyPrecipitation $WeatherModelResultDailyPrecipitationFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyPrecipitation weatherModelResultDailyPrecipitation = WeatherModelResultDailyPrecipitation();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyPrecipitation.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyPrecipitation.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyPrecipitation.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyPrecipitation.avg = avg;
	}
	return weatherModelResultDailyPrecipitation;
}

Map<String, dynamic> $WeatherModelResultDailyPrecipitationToJson(WeatherModelResultDailyPrecipitation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyTemperature $WeatherModelResultDailyTemperatureFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyTemperature weatherModelResultDailyTemperature = WeatherModelResultDailyTemperature();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyTemperature.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyTemperature.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyTemperature.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyTemperature.avg = avg;
	}
	return weatherModelResultDailyTemperature;
}

Map<String, dynamic> $WeatherModelResultDailyTemperatureToJson(WeatherModelResultDailyTemperature entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyWind $WeatherModelResultDailyWindFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyWind weatherModelResultDailyWind = WeatherModelResultDailyWind();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyWind.date = date;
	}
	final WeatherModelResultDailyWindMax? max = jsonConvert.convert<WeatherModelResultDailyWindMax>(json['max']);
	if (max != null) {
		weatherModelResultDailyWind.max = max;
	}
	final WeatherModelResultDailyWindMin? min = jsonConvert.convert<WeatherModelResultDailyWindMin>(json['min']);
	if (min != null) {
		weatherModelResultDailyWind.min = min;
	}
	final WeatherModelResultDailyWindAvg? avg = jsonConvert.convert<WeatherModelResultDailyWindAvg>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyWind.avg = avg;
	}
	return weatherModelResultDailyWind;
}

Map<String, dynamic> $WeatherModelResultDailyWindToJson(WeatherModelResultDailyWind entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max?.toJson();
	data['min'] = entity.min?.toJson();
	data['avg'] = entity.avg?.toJson();
	return data;
}

WeatherModelResultDailyWindMax $WeatherModelResultDailyWindMaxFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyWindMax weatherModelResultDailyWindMax = WeatherModelResultDailyWindMax();
	final double? speed = jsonConvert.convert<double>(json['speed']);
	if (speed != null) {
		weatherModelResultDailyWindMax.speed = speed;
	}
	final double? direction = jsonConvert.convert<double>(json['direction']);
	if (direction != null) {
		weatherModelResultDailyWindMax.direction = direction;
	}
	return weatherModelResultDailyWindMax;
}

Map<String, dynamic> $WeatherModelResultDailyWindMaxToJson(WeatherModelResultDailyWindMax entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['speed'] = entity.speed;
	data['direction'] = entity.direction;
	return data;
}

WeatherModelResultDailyWindMin $WeatherModelResultDailyWindMinFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyWindMin weatherModelResultDailyWindMin = WeatherModelResultDailyWindMin();
	final double? speed = jsonConvert.convert<double>(json['speed']);
	if (speed != null) {
		weatherModelResultDailyWindMin.speed = speed;
	}
	final double? direction = jsonConvert.convert<double>(json['direction']);
	if (direction != null) {
		weatherModelResultDailyWindMin.direction = direction;
	}
	return weatherModelResultDailyWindMin;
}

Map<String, dynamic> $WeatherModelResultDailyWindMinToJson(WeatherModelResultDailyWindMin entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['speed'] = entity.speed;
	data['direction'] = entity.direction;
	return data;
}

WeatherModelResultDailyWindAvg $WeatherModelResultDailyWindAvgFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyWindAvg weatherModelResultDailyWindAvg = WeatherModelResultDailyWindAvg();
	final double? speed = jsonConvert.convert<double>(json['speed']);
	if (speed != null) {
		weatherModelResultDailyWindAvg.speed = speed;
	}
	final double? direction = jsonConvert.convert<double>(json['direction']);
	if (direction != null) {
		weatherModelResultDailyWindAvg.direction = direction;
	}
	return weatherModelResultDailyWindAvg;
}

Map<String, dynamic> $WeatherModelResultDailyWindAvgToJson(WeatherModelResultDailyWindAvg entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['speed'] = entity.speed;
	data['direction'] = entity.direction;
	return data;
}

WeatherModelResultDailyHumidity $WeatherModelResultDailyHumidityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyHumidity weatherModelResultDailyHumidity = WeatherModelResultDailyHumidity();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyHumidity.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyHumidity.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyHumidity.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyHumidity.avg = avg;
	}
	return weatherModelResultDailyHumidity;
}

Map<String, dynamic> $WeatherModelResultDailyHumidityToJson(WeatherModelResultDailyHumidity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyCloudrate $WeatherModelResultDailyCloudrateFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyCloudrate weatherModelResultDailyCloudrate = WeatherModelResultDailyCloudrate();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyCloudrate.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyCloudrate.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyCloudrate.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyCloudrate.avg = avg;
	}
	return weatherModelResultDailyCloudrate;
}

Map<String, dynamic> $WeatherModelResultDailyCloudrateToJson(WeatherModelResultDailyCloudrate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyPressure $WeatherModelResultDailyPressureFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyPressure weatherModelResultDailyPressure = WeatherModelResultDailyPressure();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyPressure.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyPressure.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyPressure.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyPressure.avg = avg;
	}
	return weatherModelResultDailyPressure;
}

Map<String, dynamic> $WeatherModelResultDailyPressureToJson(WeatherModelResultDailyPressure entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyVisibility $WeatherModelResultDailyVisibilityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyVisibility weatherModelResultDailyVisibility = WeatherModelResultDailyVisibility();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyVisibility.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyVisibility.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyVisibility.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyVisibility.avg = avg;
	}
	return weatherModelResultDailyVisibility;
}

Map<String, dynamic> $WeatherModelResultDailyVisibilityToJson(WeatherModelResultDailyVisibility entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyDswrf $WeatherModelResultDailyDswrfFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyDswrf weatherModelResultDailyDswrf = WeatherModelResultDailyDswrf();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyDswrf.date = date;
	}
	final double? max = jsonConvert.convert<double>(json['max']);
	if (max != null) {
		weatherModelResultDailyDswrf.max = max;
	}
	final double? min = jsonConvert.convert<double>(json['min']);
	if (min != null) {
		weatherModelResultDailyDswrf.min = min;
	}
	final double? avg = jsonConvert.convert<double>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyDswrf.avg = avg;
	}
	return weatherModelResultDailyDswrf;
}

Map<String, dynamic> $WeatherModelResultDailyDswrfToJson(WeatherModelResultDailyDswrf entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['min'] = entity.min;
	data['avg'] = entity.avg;
	return data;
}

WeatherModelResultDailyAirQuality $WeatherModelResultDailyAirQualityFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAirQuality weatherModelResultDailyAirQuality = WeatherModelResultDailyAirQuality();
	final List<WeatherModelResultDailyAirQualityAqi>? aqi = jsonConvert.convertListNotNull<WeatherModelResultDailyAirQualityAqi>(json['aqi']);
	if (aqi != null) {
		weatherModelResultDailyAirQuality.aqi = aqi;
	}
	final List<WeatherModelResultDailyAirQualityPm25>? pm25 = jsonConvert.convertListNotNull<WeatherModelResultDailyAirQualityPm25>(json['pm25']);
	if (pm25 != null) {
		weatherModelResultDailyAirQuality.pm25 = pm25;
	}
	return weatherModelResultDailyAirQuality;
}

Map<String, dynamic> $WeatherModelResultDailyAirQualityToJson(WeatherModelResultDailyAirQuality entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['aqi'] =  entity.aqi?.map((v) => v.toJson()).toList();
	data['pm25'] =  entity.pm25?.map((v) => v.toJson()).toList();
	return data;
}

WeatherModelResultDailyAirQualityAqi $WeatherModelResultDailyAirQualityAqiFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAirQualityAqi weatherModelResultDailyAirQualityAqi = WeatherModelResultDailyAirQualityAqi();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyAirQualityAqi.date = date;
	}
	final WeatherModelResultDailyAirQualityAqiMax? max = jsonConvert.convert<WeatherModelResultDailyAirQualityAqiMax>(json['max']);
	if (max != null) {
		weatherModelResultDailyAirQualityAqi.max = max;
	}
	final WeatherModelResultDailyAirQualityAqiAvg? avg = jsonConvert.convert<WeatherModelResultDailyAirQualityAqiAvg>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyAirQualityAqi.avg = avg;
	}
	final WeatherModelResultDailyAirQualityAqiMin? min = jsonConvert.convert<WeatherModelResultDailyAirQualityAqiMin>(json['min']);
	if (min != null) {
		weatherModelResultDailyAirQualityAqi.min = min;
	}
	return weatherModelResultDailyAirQualityAqi;
}

Map<String, dynamic> $WeatherModelResultDailyAirQualityAqiToJson(WeatherModelResultDailyAirQualityAqi entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max?.toJson();
	data['avg'] = entity.avg?.toJson();
	data['min'] = entity.min?.toJson();
	return data;
}

WeatherModelResultDailyAirQualityAqiMax $WeatherModelResultDailyAirQualityAqiMaxFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAirQualityAqiMax weatherModelResultDailyAirQualityAqiMax = WeatherModelResultDailyAirQualityAqiMax();
	final int? chn = jsonConvert.convert<int>(json['chn']);
	if (chn != null) {
		weatherModelResultDailyAirQualityAqiMax.chn = chn;
	}
	final int? usa = jsonConvert.convert<int>(json['usa']);
	if (usa != null) {
		weatherModelResultDailyAirQualityAqiMax.usa = usa;
	}
	return weatherModelResultDailyAirQualityAqiMax;
}

Map<String, dynamic> $WeatherModelResultDailyAirQualityAqiMaxToJson(WeatherModelResultDailyAirQualityAqiMax entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['chn'] = entity.chn;
	data['usa'] = entity.usa;
	return data;
}

WeatherModelResultDailyAirQualityAqiAvg $WeatherModelResultDailyAirQualityAqiAvgFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAirQualityAqiAvg weatherModelResultDailyAirQualityAqiAvg = WeatherModelResultDailyAirQualityAqiAvg();
	final int? chn = jsonConvert.convert<int>(json['chn']);
	if (chn != null) {
		weatherModelResultDailyAirQualityAqiAvg.chn = chn;
	}
	final int? usa = jsonConvert.convert<int>(json['usa']);
	if (usa != null) {
		weatherModelResultDailyAirQualityAqiAvg.usa = usa;
	}
	return weatherModelResultDailyAirQualityAqiAvg;
}

Map<String, dynamic> $WeatherModelResultDailyAirQualityAqiAvgToJson(WeatherModelResultDailyAirQualityAqiAvg entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['chn'] = entity.chn;
	data['usa'] = entity.usa;
	return data;
}

WeatherModelResultDailyAirQualityAqiMin $WeatherModelResultDailyAirQualityAqiMinFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAirQualityAqiMin weatherModelResultDailyAirQualityAqiMin = WeatherModelResultDailyAirQualityAqiMin();
	final int? chn = jsonConvert.convert<int>(json['chn']);
	if (chn != null) {
		weatherModelResultDailyAirQualityAqiMin.chn = chn;
	}
	final int? usa = jsonConvert.convert<int>(json['usa']);
	if (usa != null) {
		weatherModelResultDailyAirQualityAqiMin.usa = usa;
	}
	return weatherModelResultDailyAirQualityAqiMin;
}

Map<String, dynamic> $WeatherModelResultDailyAirQualityAqiMinToJson(WeatherModelResultDailyAirQualityAqiMin entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['chn'] = entity.chn;
	data['usa'] = entity.usa;
	return data;
}

WeatherModelResultDailyAirQualityPm25 $WeatherModelResultDailyAirQualityPm25FromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyAirQualityPm25 weatherModelResultDailyAirQualityPm25 = WeatherModelResultDailyAirQualityPm25();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyAirQualityPm25.date = date;
	}
	final int? max = jsonConvert.convert<int>(json['max']);
	if (max != null) {
		weatherModelResultDailyAirQualityPm25.max = max;
	}
	final int? avg = jsonConvert.convert<int>(json['avg']);
	if (avg != null) {
		weatherModelResultDailyAirQualityPm25.avg = avg;
	}
	final int? min = jsonConvert.convert<int>(json['min']);
	if (min != null) {
		weatherModelResultDailyAirQualityPm25.min = min;
	}
	return weatherModelResultDailyAirQualityPm25;
}

Map<String, dynamic> $WeatherModelResultDailyAirQualityPm25ToJson(WeatherModelResultDailyAirQualityPm25 entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['max'] = entity.max;
	data['avg'] = entity.avg;
	data['min'] = entity.min;
	return data;
}

WeatherModelResultDailySkycon $WeatherModelResultDailySkyconFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailySkycon weatherModelResultDailySkycon = WeatherModelResultDailySkycon();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailySkycon.date = date;
	}
	final String? value = jsonConvert.convert<String>(json['value']);
	if (value != null) {
		weatherModelResultDailySkycon.value = value;
	}
	return weatherModelResultDailySkycon;
}

Map<String, dynamic> $WeatherModelResultDailySkyconToJson(WeatherModelResultDailySkycon entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultDailySkycon08h20h $WeatherModelResultDailySkycon08h20hFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailySkycon08h20h weatherModelResultDailySkycon08h20h = WeatherModelResultDailySkycon08h20h();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailySkycon08h20h.date = date;
	}
	final String? value = jsonConvert.convert<String>(json['value']);
	if (value != null) {
		weatherModelResultDailySkycon08h20h.value = value;
	}
	return weatherModelResultDailySkycon08h20h;
}

Map<String, dynamic> $WeatherModelResultDailySkycon08h20hToJson(WeatherModelResultDailySkycon08h20h entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultDailySkycon20h32h $WeatherModelResultDailySkycon20h32hFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailySkycon20h32h weatherModelResultDailySkycon20h32h = WeatherModelResultDailySkycon20h32h();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailySkycon20h32h.date = date;
	}
	final String? value = jsonConvert.convert<String>(json['value']);
	if (value != null) {
		weatherModelResultDailySkycon20h32h.value = value;
	}
	return weatherModelResultDailySkycon20h32h;
}

Map<String, dynamic> $WeatherModelResultDailySkycon20h32hToJson(WeatherModelResultDailySkycon20h32h entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['value'] = entity.value;
	return data;
}

WeatherModelResultDailyLifeIndex $WeatherModelResultDailyLifeIndexFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyLifeIndex weatherModelResultDailyLifeIndex = WeatherModelResultDailyLifeIndex();
	final List<WeatherModelResultDailyLifeIndexUltraviolet>? ultraviolet = jsonConvert.convertListNotNull<WeatherModelResultDailyLifeIndexUltraviolet>(json['ultraviolet']);
	if (ultraviolet != null) {
		weatherModelResultDailyLifeIndex.ultraviolet = ultraviolet;
	}
	final List<WeatherModelResultDailyLifeIndexCarWashing>? carWashing = jsonConvert.convertListNotNull<WeatherModelResultDailyLifeIndexCarWashing>(json['carWashing']);
	if (carWashing != null) {
		weatherModelResultDailyLifeIndex.carWashing = carWashing;
	}
	final List<WeatherModelResultDailyLifeIndexDressing>? dressing = jsonConvert.convertListNotNull<WeatherModelResultDailyLifeIndexDressing>(json['dressing']);
	if (dressing != null) {
		weatherModelResultDailyLifeIndex.dressing = dressing;
	}
	final List<WeatherModelResultDailyLifeIndexComfort>? comfort = jsonConvert.convertListNotNull<WeatherModelResultDailyLifeIndexComfort>(json['comfort']);
	if (comfort != null) {
		weatherModelResultDailyLifeIndex.comfort = comfort;
	}
	final List<WeatherModelResultDailyLifeIndexColdRisk>? coldRisk = jsonConvert.convertListNotNull<WeatherModelResultDailyLifeIndexColdRisk>(json['coldRisk']);
	if (coldRisk != null) {
		weatherModelResultDailyLifeIndex.coldRisk = coldRisk;
	}
	return weatherModelResultDailyLifeIndex;
}

Map<String, dynamic> $WeatherModelResultDailyLifeIndexToJson(WeatherModelResultDailyLifeIndex entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ultraviolet'] =  entity.ultraviolet?.map((v) => v.toJson()).toList();
	data['carWashing'] =  entity.carWashing?.map((v) => v.toJson()).toList();
	data['dressing'] =  entity.dressing?.map((v) => v.toJson()).toList();
	data['comfort'] =  entity.comfort?.map((v) => v.toJson()).toList();
	data['coldRisk'] =  entity.coldRisk?.map((v) => v.toJson()).toList();
	return data;
}

WeatherModelResultDailyLifeIndexUltraviolet $WeatherModelResultDailyLifeIndexUltravioletFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyLifeIndexUltraviolet weatherModelResultDailyLifeIndexUltraviolet = WeatherModelResultDailyLifeIndexUltraviolet();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyLifeIndexUltraviolet.date = date;
	}
	final String? index = jsonConvert.convert<String>(json['index']);
	if (index != null) {
		weatherModelResultDailyLifeIndexUltraviolet.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultDailyLifeIndexUltraviolet.desc = desc;
	}
	return weatherModelResultDailyLifeIndexUltraviolet;
}

Map<String, dynamic> $WeatherModelResultDailyLifeIndexUltravioletToJson(WeatherModelResultDailyLifeIndexUltraviolet entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}

WeatherModelResultDailyLifeIndexCarWashing $WeatherModelResultDailyLifeIndexCarWashingFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyLifeIndexCarWashing weatherModelResultDailyLifeIndexCarWashing = WeatherModelResultDailyLifeIndexCarWashing();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyLifeIndexCarWashing.date = date;
	}
	final String? index = jsonConvert.convert<String>(json['index']);
	if (index != null) {
		weatherModelResultDailyLifeIndexCarWashing.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultDailyLifeIndexCarWashing.desc = desc;
	}
	return weatherModelResultDailyLifeIndexCarWashing;
}

Map<String, dynamic> $WeatherModelResultDailyLifeIndexCarWashingToJson(WeatherModelResultDailyLifeIndexCarWashing entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}

WeatherModelResultDailyLifeIndexDressing $WeatherModelResultDailyLifeIndexDressingFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyLifeIndexDressing weatherModelResultDailyLifeIndexDressing = WeatherModelResultDailyLifeIndexDressing();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyLifeIndexDressing.date = date;
	}
	final String? index = jsonConvert.convert<String>(json['index']);
	if (index != null) {
		weatherModelResultDailyLifeIndexDressing.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultDailyLifeIndexDressing.desc = desc;
	}
	return weatherModelResultDailyLifeIndexDressing;
}

Map<String, dynamic> $WeatherModelResultDailyLifeIndexDressingToJson(WeatherModelResultDailyLifeIndexDressing entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}

WeatherModelResultDailyLifeIndexComfort $WeatherModelResultDailyLifeIndexComfortFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyLifeIndexComfort weatherModelResultDailyLifeIndexComfort = WeatherModelResultDailyLifeIndexComfort();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyLifeIndexComfort.date = date;
	}
	final String? index = jsonConvert.convert<String>(json['index']);
	if (index != null) {
		weatherModelResultDailyLifeIndexComfort.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultDailyLifeIndexComfort.desc = desc;
	}
	return weatherModelResultDailyLifeIndexComfort;
}

Map<String, dynamic> $WeatherModelResultDailyLifeIndexComfortToJson(WeatherModelResultDailyLifeIndexComfort entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}

WeatherModelResultDailyLifeIndexColdRisk $WeatherModelResultDailyLifeIndexColdRiskFromJson(Map<String, dynamic> json) {
	final WeatherModelResultDailyLifeIndexColdRisk weatherModelResultDailyLifeIndexColdRisk = WeatherModelResultDailyLifeIndexColdRisk();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherModelResultDailyLifeIndexColdRisk.date = date;
	}
	final String? index = jsonConvert.convert<String>(json['index']);
	if (index != null) {
		weatherModelResultDailyLifeIndexColdRisk.index = index;
	}
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		weatherModelResultDailyLifeIndexColdRisk.desc = desc;
	}
	return weatherModelResultDailyLifeIndexColdRisk;
}

Map<String, dynamic> $WeatherModelResultDailyLifeIndexColdRiskToJson(WeatherModelResultDailyLifeIndexColdRisk entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['index'] = entity.index;
	data['desc'] = entity.desc;
	return data;
}