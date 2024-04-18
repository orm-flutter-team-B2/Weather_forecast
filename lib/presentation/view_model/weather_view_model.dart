import 'package:flutter/material.dart';
import 'package:weather/domain/model/weather_model.dart';
import 'package:weather/domain/repository/weather_repository.dart';
import 'package:weather/presentation/view_model/today_weather_info_use_case.dart';
import 'package:weather/presentation/view_model/weather_view_model_state.dart';
import 'package:weather/presentation/view_model/week_weather_info_use_case.dart';

class WeatherViewModel with ChangeNotifier {
  TodayWeatherInfoUseCase todayWeatherInfoUseCase;
  WeekWeatherInfoUseCase weekWeatherInfoUseCase;

  WeatherViewModel({
    required this.todayWeatherInfoUseCase,
    required this.weekWeatherInfoUseCase,
  });
  WeatherViewModelState _state = const WeatherViewModelState();

  WeatherViewModelState get state => _state;

  void fetchWeather(double lat, double lon) async {
    _state = _state.copyWith(isLoading: true);

    notifyListeners();

    final today = await todayWeatherInfoUseCase.getTodayWeatherInfo(lat, lon);
    final week = await weekWeatherInfoUseCase.getWeekWeatherInfo(lat, lon);

    _state = _state.copyWith(isLoading: false, today: today, weekWeather: week);

    notifyListeners();
  }
}
