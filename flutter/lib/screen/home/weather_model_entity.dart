import 'package:evapp/generated/json/base/json_field.dart';
import 'package:evapp/generated/json/weather_model_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class WeatherModelEntity {
	String? status;
	@JSONField(name: "api_version")
	String? apiVersion;
	@JSONField(name: "api_status")
	String? apiStatus;
	String? lang;
	String? unit;
	int? tzshift;
	String? timezone;
	@JSONField(name: "server_time")
	int? serverTime;
	List<double>? location;
	WeatherModelResult? result;

	WeatherModelEntity();

	factory WeatherModelEntity.fromJson(Map<String, dynamic> json) => $WeatherModelEntityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResult {
	WeatherModelResultAlert? alert;
	WeatherModelResultRealtime? realtime;
	WeatherModelResultMinutely? minutely;
	WeatherModelResultHourly? hourly;
	WeatherModelResultDaily? daily;
	int? primary;
	@JSONField(name: "forecast_keypoint")
	String? forecastKeypoint;

	WeatherModelResult();

	factory WeatherModelResult.fromJson(Map<String, dynamic> json) => $WeatherModelResultFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultAlert {
	String? status;
	List<WeatherModelResultAlertContent>? content;

	WeatherModelResultAlert();

	factory WeatherModelResultAlert.fromJson(Map<String, dynamic> json) => $WeatherModelResultAlertFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultAlertToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultAlertContent {
	String? province;
	String? status;
	String? code;
	String? description;
	String? regionId;
	String? county;
	int? pubtimestamp;
	List<double>? latlon;
	String? city;
	String? alertId;
	String? title;
	String? adcode;
	@JSONField(name: "source")
	String? xSource;
	String? location;
	@JSONField(name: "request_status")
	String? requestStatus;

	WeatherModelResultAlertContent();

	factory WeatherModelResultAlertContent.fromJson(Map<String, dynamic> json) => $WeatherModelResultAlertContentFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultAlertContentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtime {
	String? status;
	double? temperature;
	double? humidity;
	double? cloudrate;
	String? skycon;
	double? visibility;
	double? dswrf;
	WeatherModelResultRealtimeWind? wind;
	double? pressure;
	@JSONField(name: "apparent_temperature")
	double? apparentTemperature;
	WeatherModelResultRealtimePrecipitation? precipitation;
	@JSONField(name: "air_quality")
	WeatherModelResultRealtimeAirQuality? airQuality;
	@JSONField(name: "life_index")
	WeatherModelResultRealtimeLifeIndex? lifeIndex;

	WeatherModelResultRealtime();

	factory WeatherModelResultRealtime.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeWind {
	double? speed;
	double? direction;

	WeatherModelResultRealtimeWind();

	factory WeatherModelResultRealtimeWind.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeWindFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeWindToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimePrecipitation {
	WeatherModelResultRealtimePrecipitationLocal? local;
	WeatherModelResultRealtimePrecipitationNearest? nearest;

	WeatherModelResultRealtimePrecipitation();

	factory WeatherModelResultRealtimePrecipitation.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimePrecipitationFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimePrecipitationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimePrecipitationLocal {
	String? status;
	String? datasource;
	double? intensity;

	WeatherModelResultRealtimePrecipitationLocal();

	factory WeatherModelResultRealtimePrecipitationLocal.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimePrecipitationLocalFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimePrecipitationLocalToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimePrecipitationNearest {
	String? status;
	double? distance;
	double? intensity;

	WeatherModelResultRealtimePrecipitationNearest();

	factory WeatherModelResultRealtimePrecipitationNearest.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimePrecipitationNearestFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimePrecipitationNearestToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeAirQuality {
	int? pm25;
	int? pm10;
	int? o3;
	int? so2;
	int? no2;
	double? co;
	WeatherModelResultRealtimeAirQualityAqi? aqi;
	WeatherModelResultRealtimeAirQualityDescription? description;

	WeatherModelResultRealtimeAirQuality();

	factory WeatherModelResultRealtimeAirQuality.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeAirQualityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeAirQualityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeAirQualityAqi {
	int? chn;
	int? usa;

	WeatherModelResultRealtimeAirQualityAqi();

	factory WeatherModelResultRealtimeAirQualityAqi.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeAirQualityAqiFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeAirQualityAqiToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeAirQualityDescription {
	String? chn;
	String? usa;

	WeatherModelResultRealtimeAirQualityDescription();

	factory WeatherModelResultRealtimeAirQualityDescription.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeAirQualityDescriptionFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeAirQualityDescriptionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeLifeIndex {
	WeatherModelResultRealtimeLifeIndexUltraviolet? ultraviolet;
	WeatherModelResultRealtimeLifeIndexComfort? comfort;

	WeatherModelResultRealtimeLifeIndex();

	factory WeatherModelResultRealtimeLifeIndex.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeLifeIndexFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeLifeIndexToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeLifeIndexUltraviolet {
	double? index;
	String? desc;

	WeatherModelResultRealtimeLifeIndexUltraviolet();

	factory WeatherModelResultRealtimeLifeIndexUltraviolet.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeLifeIndexUltravioletFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeLifeIndexUltravioletToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultRealtimeLifeIndexComfort {
	int? index;
	String? desc;

	WeatherModelResultRealtimeLifeIndexComfort();

	factory WeatherModelResultRealtimeLifeIndexComfort.fromJson(Map<String, dynamic> json) => $WeatherModelResultRealtimeLifeIndexComfortFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultRealtimeLifeIndexComfortToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultMinutely {
	String? status;
	String? datasource;
	@JSONField(name: "precipitation_2h")
	List<double>? precipitation2h;
	List<double>? precipitation;
	List<double>? probability;
	String? description;

	WeatherModelResultMinutely();

	factory WeatherModelResultMinutely.fromJson(Map<String, dynamic> json) => $WeatherModelResultMinutelyFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultMinutelyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourly {
	String? status;
	String? description;
	List<WeatherModelResultHourlyPrecipitation>? precipitation;
	List<WeatherModelResultHourlyTemperature>? temperature;
	List<WeatherModelResultHourlyWind>? wind;
	List<WeatherModelResultHourlyHumidity>? humidity;
	List<WeatherModelResultHourlyCloudrate>? cloudrate;
	List<WeatherModelResultHourlySkycon>? skycon;
	List<WeatherModelResultHourlyPressure>? pressure;
	List<WeatherModelResultHourlyVisibility>? visibility;
	List<WeatherModelResultHourlyDswrf>? dswrf;
	@JSONField(name: "air_quality")
	WeatherModelResultHourlyAirQuality? airQuality;

	WeatherModelResultHourly();

	factory WeatherModelResultHourly.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyPrecipitation {
	String? datetime;
	double? value;

	WeatherModelResultHourlyPrecipitation();

	factory WeatherModelResultHourlyPrecipitation.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyPrecipitationFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyPrecipitationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyTemperature {
	String? datetime;
	double? value;

	WeatherModelResultHourlyTemperature();

	factory WeatherModelResultHourlyTemperature.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyTemperatureFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyTemperatureToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyWind {
	String? datetime;
	double? speed;
	double? direction;

	WeatherModelResultHourlyWind();

	factory WeatherModelResultHourlyWind.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyWindFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyWindToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyHumidity {
	String? datetime;
	double? value;

	WeatherModelResultHourlyHumidity();

	factory WeatherModelResultHourlyHumidity.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyHumidityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyHumidityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyCloudrate {
	String? datetime;
	double? value;

	WeatherModelResultHourlyCloudrate();

	factory WeatherModelResultHourlyCloudrate.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyCloudrateFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyCloudrateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlySkycon {
	String? datetime;
	String? value;

	WeatherModelResultHourlySkycon();

	factory WeatherModelResultHourlySkycon.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlySkyconFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlySkyconToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyPressure {
	String? datetime;
	double? value;

	WeatherModelResultHourlyPressure();

	factory WeatherModelResultHourlyPressure.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyPressureFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyPressureToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyVisibility {
	String? datetime;
	double? value;

	WeatherModelResultHourlyVisibility();

	factory WeatherModelResultHourlyVisibility.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyVisibilityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyVisibilityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyDswrf {
	String? datetime;
	double? value;

	WeatherModelResultHourlyDswrf();

	factory WeatherModelResultHourlyDswrf.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyDswrfFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyDswrfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyAirQuality {
	List<WeatherModelResultHourlyAirQualityAqi>? aqi;
	List<WeatherModelResultHourlyAirQualityPm25>? pm25;

	WeatherModelResultHourlyAirQuality();

	factory WeatherModelResultHourlyAirQuality.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyAirQualityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyAirQualityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyAirQualityAqi {
	String? datetime;
	WeatherModelResultHourlyAirQualityAqiValue? value;

	WeatherModelResultHourlyAirQualityAqi();

	factory WeatherModelResultHourlyAirQualityAqi.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyAirQualityAqiFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyAirQualityAqiToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyAirQualityAqiValue {
	int? chn;
	int? usa;

	WeatherModelResultHourlyAirQualityAqiValue();

	factory WeatherModelResultHourlyAirQualityAqiValue.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyAirQualityAqiValueFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyAirQualityAqiValueToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultHourlyAirQualityPm25 {
	String? datetime;
	int? value;

	WeatherModelResultHourlyAirQualityPm25();

	factory WeatherModelResultHourlyAirQualityPm25.fromJson(Map<String, dynamic> json) => $WeatherModelResultHourlyAirQualityPm25FromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultHourlyAirQualityPm25ToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDaily {
	String? status;
	List<WeatherModelResultDailyAstro>? astro;
	List<WeatherModelResultDailyPrecipitation>? precipitation;
	List<WeatherModelResultDailyTemperature>? temperature;
	List<WeatherModelResultDailyWind>? wind;
	List<WeatherModelResultDailyHumidity>? humidity;
	List<WeatherModelResultDailyCloudrate>? cloudrate;
	List<WeatherModelResultDailyPressure>? pressure;
	List<WeatherModelResultDailyVisibility>? visibility;
	List<WeatherModelResultDailyDswrf>? dswrf;
	@JSONField(name: "air_quality")
	WeatherModelResultDailyAirQuality? airQuality;
	List<WeatherModelResultDailySkycon>? skycon;
	@JSONField(name: "skycon_08h_20h")
	List<WeatherModelResultDailySkycon08h20h>? skycon08h20h;
	@JSONField(name: "skycon_20h_32h")
	List<WeatherModelResultDailySkycon20h32h>? skycon20h32h;
	@JSONField(name: "life_index")
	WeatherModelResultDailyLifeIndex? lifeIndex;

	WeatherModelResultDaily();

	factory WeatherModelResultDaily.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAstro {
	String? date;
	WeatherModelResultDailyAstroSunrise? sunrise;
	WeatherModelResultDailyAstroSunset? sunset;

	WeatherModelResultDailyAstro();

	factory WeatherModelResultDailyAstro.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAstroFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAstroToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAstroSunrise {
	String? time;

	WeatherModelResultDailyAstroSunrise();

	factory WeatherModelResultDailyAstroSunrise.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAstroSunriseFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAstroSunriseToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAstroSunset {
	String? time;

	WeatherModelResultDailyAstroSunset();

	factory WeatherModelResultDailyAstroSunset.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAstroSunsetFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAstroSunsetToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyPrecipitation {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyPrecipitation();

	factory WeatherModelResultDailyPrecipitation.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyPrecipitationFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyPrecipitationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyTemperature {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyTemperature();

	factory WeatherModelResultDailyTemperature.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyTemperatureFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyTemperatureToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyWind {
	String? date;
	WeatherModelResultDailyWindMax? max;
	WeatherModelResultDailyWindMin? min;
	WeatherModelResultDailyWindAvg? avg;

	WeatherModelResultDailyWind();

	factory WeatherModelResultDailyWind.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyWindFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyWindToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyWindMax {
	double? speed;
	double? direction;

	WeatherModelResultDailyWindMax();

	factory WeatherModelResultDailyWindMax.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyWindMaxFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyWindMaxToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyWindMin {
	double? speed;
	double? direction;

	WeatherModelResultDailyWindMin();

	factory WeatherModelResultDailyWindMin.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyWindMinFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyWindMinToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyWindAvg {
	double? speed;
	double? direction;

	WeatherModelResultDailyWindAvg();

	factory WeatherModelResultDailyWindAvg.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyWindAvgFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyWindAvgToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyHumidity {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyHumidity();

	factory WeatherModelResultDailyHumidity.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyHumidityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyHumidityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyCloudrate {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyCloudrate();

	factory WeatherModelResultDailyCloudrate.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyCloudrateFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyCloudrateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyPressure {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyPressure();

	factory WeatherModelResultDailyPressure.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyPressureFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyPressureToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyVisibility {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyVisibility();

	factory WeatherModelResultDailyVisibility.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyVisibilityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyVisibilityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyDswrf {
	String? date;
	double? max;
	double? min;
	double? avg;

	WeatherModelResultDailyDswrf();

	factory WeatherModelResultDailyDswrf.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyDswrfFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyDswrfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAirQuality {
	List<WeatherModelResultDailyAirQualityAqi>? aqi;
	List<WeatherModelResultDailyAirQualityPm25>? pm25;

	WeatherModelResultDailyAirQuality();

	factory WeatherModelResultDailyAirQuality.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAirQualityFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAirQualityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAirQualityAqi {
	String? date;
	WeatherModelResultDailyAirQualityAqiMax? max;
	WeatherModelResultDailyAirQualityAqiAvg? avg;
	WeatherModelResultDailyAirQualityAqiMin? min;

	WeatherModelResultDailyAirQualityAqi();

	factory WeatherModelResultDailyAirQualityAqi.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAirQualityAqiFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAirQualityAqiToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAirQualityAqiMax {
	int? chn;
	int? usa;

	WeatherModelResultDailyAirQualityAqiMax();

	factory WeatherModelResultDailyAirQualityAqiMax.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAirQualityAqiMaxFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAirQualityAqiMaxToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAirQualityAqiAvg {
	int? chn;
	int? usa;

	WeatherModelResultDailyAirQualityAqiAvg();

	factory WeatherModelResultDailyAirQualityAqiAvg.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAirQualityAqiAvgFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAirQualityAqiAvgToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAirQualityAqiMin {
	int? chn;
	int? usa;

	WeatherModelResultDailyAirQualityAqiMin();

	factory WeatherModelResultDailyAirQualityAqiMin.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAirQualityAqiMinFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAirQualityAqiMinToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyAirQualityPm25 {
	String? date;
	int? max;
	int? avg;
	int? min;

	WeatherModelResultDailyAirQualityPm25();

	factory WeatherModelResultDailyAirQualityPm25.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyAirQualityPm25FromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyAirQualityPm25ToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailySkycon {
	String? date;
	String? value;

	WeatherModelResultDailySkycon();

	factory WeatherModelResultDailySkycon.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailySkyconFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailySkyconToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailySkycon08h20h {
	String? date;
	String? value;

	WeatherModelResultDailySkycon08h20h();

	factory WeatherModelResultDailySkycon08h20h.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailySkycon08h20hFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailySkycon08h20hToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailySkycon20h32h {
	String? date;
	String? value;

	WeatherModelResultDailySkycon20h32h();

	factory WeatherModelResultDailySkycon20h32h.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailySkycon20h32hFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailySkycon20h32hToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyLifeIndex {
	List<WeatherModelResultDailyLifeIndexUltraviolet>? ultraviolet;
	List<WeatherModelResultDailyLifeIndexCarWashing>? carWashing;
	List<WeatherModelResultDailyLifeIndexDressing>? dressing;
	List<WeatherModelResultDailyLifeIndexComfort>? comfort;
	List<WeatherModelResultDailyLifeIndexColdRisk>? coldRisk;

	WeatherModelResultDailyLifeIndex();

	factory WeatherModelResultDailyLifeIndex.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyLifeIndexFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyLifeIndexToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyLifeIndexUltraviolet {
	String? date;
	String? index;
	String? desc;

	WeatherModelResultDailyLifeIndexUltraviolet();

	factory WeatherModelResultDailyLifeIndexUltraviolet.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyLifeIndexUltravioletFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyLifeIndexUltravioletToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyLifeIndexCarWashing {
	String? date;
	String? index;
	String? desc;

	WeatherModelResultDailyLifeIndexCarWashing();

	factory WeatherModelResultDailyLifeIndexCarWashing.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyLifeIndexCarWashingFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyLifeIndexCarWashingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyLifeIndexDressing {
	String? date;
	String? index;
	String? desc;

	WeatherModelResultDailyLifeIndexDressing();

	factory WeatherModelResultDailyLifeIndexDressing.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyLifeIndexDressingFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyLifeIndexDressingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyLifeIndexComfort {
	String? date;
	String? index;
	String? desc;

	WeatherModelResultDailyLifeIndexComfort();

	factory WeatherModelResultDailyLifeIndexComfort.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyLifeIndexComfortFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyLifeIndexComfortToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WeatherModelResultDailyLifeIndexColdRisk {
	String? date;
	String? index;
	String? desc;

	WeatherModelResultDailyLifeIndexColdRisk();

	factory WeatherModelResultDailyLifeIndexColdRisk.fromJson(Map<String, dynamic> json) => $WeatherModelResultDailyLifeIndexColdRiskFromJson(json);

	Map<String, dynamic> toJson() => $WeatherModelResultDailyLifeIndexColdRiskToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}