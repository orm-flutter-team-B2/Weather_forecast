// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_view_model_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherViewModelStateImpl _$$WeatherViewModelStateImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherViewModelStateImpl(
      today: json['today'] as Map<String, dynamic>? ?? const {},
      time:
          (json['time'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      temperature: (json['temperature'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      weatherCode: (json['weatherCode'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      relativeHumidity: (json['relativeHumidity'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      windSpeed: (json['windSpeed'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeatherViewModelStateImplToJson(
        _$WeatherViewModelStateImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'time': instance.time,
      'temperature': instance.temperature,
      'weatherCode': instance.weatherCode,
      'relativeHumidity': instance.relativeHumidity,
      'windSpeed': instance.windSpeed,
    };
