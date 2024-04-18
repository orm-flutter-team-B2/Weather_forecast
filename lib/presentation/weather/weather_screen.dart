import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/presentation/weather/weather_view_model.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    return Scaffold(
      body: Text('${viewModel.weather}'),
    );
  }
}