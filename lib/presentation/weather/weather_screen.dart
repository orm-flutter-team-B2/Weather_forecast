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
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_image.jpeg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  width: 330,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Column(
                    children: [
                      Text(
                        viewModel.state.today['time'],
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const Text(
                        '서울특별시',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              '${viewModel.state.today['temperature']}°C',
                              style: const TextStyle(fontSize: 30, color: Colors.white), textAlign: TextAlign.right
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text('|', style: TextStyle(fontSize: 28, color: Colors.white), textAlign: TextAlign.center,)
                          ),
                          Expanded(
                            flex: 3,
                              child: Align(child: Icon(viewModel.state.today['weatherCode'].icon, color: Colors.white,), alignment: Alignment.centerLeft,)
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                                "풍속 : ${viewModel.state.today['windSpeed']}",
                                style: const TextStyle(fontSize: 24, color: Colors.white), textAlign: TextAlign.right
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text('|', style: TextStyle(fontSize: 28, color: Colors.white), textAlign: TextAlign.center,)
                          ),
                          Expanded(
                              flex: 3,
                              child: Text(
                                "습도 : ${viewModel.state.today['relativeHumidity']}",
                                style: const TextStyle(fontSize: 24, color: Colors.white),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
      ),
    );
  }
}
