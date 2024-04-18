import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/presentation/view_model/weather_view_model.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    return Scaffold(
      body: Text('${viewModel.state}'),
    );
  }
}
