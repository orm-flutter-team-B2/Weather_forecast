import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/data/data_source/weather_api.dart';
import 'package:weather/data/repository/weather_repository_impl.dart';
import 'package:weather/domain/repository/weather_repository.dart';
import 'package:weather/presentation/view_model/today_weather_info_use_case.dart';
import 'package:weather/presentation/view_model/weather_view_model.dart';
import 'package:weather/presentation/view_model/week_weather_info_use_case.dart';

import 'presentation/weather/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) {
          final repo = WeatherRepositoryImpl(weatherApi: WeatherApi());
          return WeatherViewModel(
            weekWeatherInfoUseCase: WeekWeatherInfoUseCase(repository: repo),
            todayWeatherInfoUseCase: TodayWeatherInfoUseCase(repository: repo),
          );
        },
        child: const WeatherScreen(),
      ),
    );
  }
}
