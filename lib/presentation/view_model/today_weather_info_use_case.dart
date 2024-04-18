import 'package:weather/data/data_source/weather_api.dart';
import 'package:weather/data/repository/weather_repository_impl.dart';
import 'package:weather/domain/repository/weather_repository.dart';
import 'package:intl/intl.dart';

class TodayWeatherInfoUseCase {
  final WeatherRepository repository;



  Future<List> getTodayWeatherInfo(double lat, double lon) async {
    final result = [];
    final data = await repository.getWeather(lat, lon);
    final today = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-ddTHH').format(today);
    final index = data.time.indexOf('$formattedDate:00');

    result.add(data.time[index]);
    result.add(data.temperature[index].toString());
    result.add(data.weatherCode[index].toString());
    result.add(data.windSpeed[index].toString());
    result.add(data.relativeHumidity[index].toString());

    return result;
  }

  const TodayWeatherInfoUseCase({
    required this.repository,
  });
}