import 'package:weather/data/data_source/weather_api.dart';
import 'package:weather/data/repository/weather_repository_impl.dart';
import 'package:weather/domain/model/weather_icon.dart';
import 'package:weather/domain/repository/weather_repository.dart';
import 'package:intl/intl.dart';

class TodayWeatherInfoUseCase {
  final WeatherRepository repository;

  Future<Map<String, dynamic>> getTodayWeatherInfo(double lat, double lon) async {
    final data = await repository.getWeather(lat, lon);
    final today = DateTime.now();
    final todayWeekday = DateFormat('EEEE').format(today);
    final formattedDate = DateFormat('yyyy-MM-ddTHH').format(today);
    final index = data.time.indexOf('$formattedDate:00');

    Map<String, dynamic> result = {
      'time': '${today.year}-${today.month}-${today.day} $todayWeekday',
      'temperature': data.temperature[index].toString(),
      'weatherCode': WeatherIcon.getByCode(data.weatherCode[index]),
      'windSpeed': data.windSpeed[index].toString(),
      'relativeHumidity': data.relativeHumidity[index].toString()
    };

    return result;
  }

  const TodayWeatherInfoUseCase({
    required this.repository,
  });
}