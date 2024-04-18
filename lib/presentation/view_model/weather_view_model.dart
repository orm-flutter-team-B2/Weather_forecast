import 'package:flutter/material.dart';
import 'package:weather/domain/model/weather_model.dart';
import 'package:weather/domain/repository/weather_repository.dart';
import 'package:weather/presentation/view_model/weather_view_model_state.dart';

class WeatherViewModel with ChangeNotifier {
  final WeatherRepository _weatherRepository;

  WeatherViewModel({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository;

  WeatherViewModelState _state = const WeatherViewModelState();

  WeatherViewModelState get state => _state;

  void fetchWeather(double lat, double lon) async {
    final origin = await _weatherRepository.getWeather(lat, lon);
    _state = _state.copyWith(
      time: origin.time,
      temperature: origin.temperature,
      weatherCode: origin.weatherCode,
      relativeHumidity: origin.relativeHumidity,
      windSpeed: origin.windSpeed,
    );

    notifyListeners();
  }
}
