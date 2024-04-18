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
        'time': '${today.year}-${today.month}-${today.day} $todayWeekday',
        'temperature': data.temperature[index].toString(),
        'weatherCode': WeatherIcon.getByCode(data.weatherCode[index]),
        'windSpeed': data.windSpeed[index].toString(),
        'relativeHumidity': data.relativeHumidity[index].toString()
      };
      result.add(dataResult);
    }

    return result;
  }

  const WeekWeatherInfoUseCase({
    required this.repository,
  });
}
