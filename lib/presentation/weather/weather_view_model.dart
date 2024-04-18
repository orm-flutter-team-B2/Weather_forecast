import 'package:flutter/material.dart';
import 'package:weather/domain/model/weather_model.dart';
import 'package:weather/domain/repository/weather_repository.dart';

class WeatherViewModel with ChangeNotifier {
  final WeatherRepository _weatherRepository;

  WeatherViewModel({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository;

  WeatherModel _weather = const WeatherModel(time: [],
      temperature: [],
      weatherCode: [],
      relativeHumidity: [],
      windSpeed: []
  );

  WeatherModel get weather => _weather;

  void fetchWeather(double lat, double lon) async {
    _weather = await _weatherRepository.getWeather(lat, lon);
    notifyListeners();
  }
}
