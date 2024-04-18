import 'package:intl/intl.dart';
import 'package:weather/domain/repository/weather_repository.dart';

import '../../domain/model/weather_icon.dart';

class WeekWeatherInfoUseCase {
  final WeatherRepository repository;

  Future<List<Map<String, dynamic>>> getWeekWeatherInfo(
      double lat, double lon) async {
    final data = await repository.getWeather(lat, lon);

    List<Map<String, dynamic>> result = [];

    for (int i = 0; i < 6; i++) {
      final today = DateTime.now().add(Duration(days: i + 1));
      final todayWeekday = DateFormat('EEEE').format(today);
      final formattedDate = DateFormat('yyyy-MM-ddTHH').format(today);
      final index = data.time.indexOf('$formattedDate:00');
      Map<String, dynamic> dataResult = {
        'time': '${today.month}-${today.day} $todayWeekday',
        'midnightTemperature': data.temperature[24 * i].toString(),
        'noonTemperature': data.temperature[(i*24) + 12].toString(),
        'weatherCode': WeatherIcon.getByCode(data.weatherCode[index]),
      };
      print(dataResult);
      print('testtestsetes');
      result.add(dataResult);
    }

    return result;
  }

  const WeekWeatherInfoUseCase({
    required this.repository,
  });
}
