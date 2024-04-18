import 'package:weather/data/data_source/weather_api.dart';
import 'package:weather/data/mapper/weather_mapper.dart';
import 'package:weather/domain/model/weather_model.dart';
import 'package:weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;

  const WeatherRepositoryImpl({
    required WeatherApi weatherApi,
  }) : _weatherApi = weatherApi;

  @override
  Future<WeatherModel> getWeather(double lat, double lon) async {
    final weatherModelDto = await _weatherApi.getWeatherDto(lat, lon);

    if (weatherModelDto == null) {
      return const WeatherModel(
          time: [],
          temperature: [],
          weatherCode: [],
          relativeHumidity: [],
          windSpeed: []);
    }
    return weatherModelDto.toWeatherModel();
  }
}
