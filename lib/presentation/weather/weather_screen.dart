import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/presentation/view_model/weather_view_model.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

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
                    const Text(
                      '나의 위치',
                      style: TextStyle(fontSize: 40),
                    ),
                    const Text(
                      '서울특별시',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24°',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '맑음',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '36%',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
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
