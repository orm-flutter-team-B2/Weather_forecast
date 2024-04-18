import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_view_model_state.freezed.dart';

part 'weather_view_model_state.g.dart';

@freezed
class WeatherViewModelState with _$WeatherViewModelState {
  const factory WeatherViewModelState({
    @Default(false) bool isLoading,
    @Default({}) Map<String, dynamic> today,
    @Default([]) List<String> time,
    @Default([]) List<num> temperature,
    @Default([]) List<num> weatherCode,
    @Default([]) List<num> relativeHumidity,
    @Default([]) List<num> windSpeed,
  }) = _WeatherViewModelState;

  factory WeatherViewModelState.fromJson(Map<String, Object?> json) => _$WeatherViewModelStateFromJson(json);
}