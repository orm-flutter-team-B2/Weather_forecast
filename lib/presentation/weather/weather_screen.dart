import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/presentation/view_model/weather_view_model.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // latitude=37.5786&longitude=126.9764
  @override
  void initState() {
    Future.microtask(() {
      return context.read<WeatherViewModel>().fetchWeather(37.5786, 126.9764);
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      viewModel.state.today[0],
                      style: const TextStyle(fontSize: 40),
                    ),
                    const Text(
                      '서울특별시',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          viewModel.state.today[1],
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(
                          viewModel.state.today[2],
                          style: const TextStyle(fontSize: 30),
                        ),
                        Text(
                          viewModel.state.today[3],
                          style: const TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('오늘'),
                            Icon(Icons.cloud),
                            Text('온도 , 온도')
                          ],
                        ),
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('오늘'),
                              Icon(Icons.cloud),
                              Text('온도 , 온도')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
