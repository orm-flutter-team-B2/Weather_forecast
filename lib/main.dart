import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/data/data_source/weather_api.dart';
import 'package:weather/data/repository/weather_repository_impl.dart';
import 'package:weather/presentation/view_model/weather_view_model.dart';

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
            create: (_) => WeatherViewModel(
                weatherRepository:
                    WeatherRepositoryImpl(weatherApi: WeatherApi())),
            child: WeatherScreen()));
  }
}
