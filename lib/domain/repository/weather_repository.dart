import 'package:weather/domain/model/weather_model.dart';

abstract interface class WeatherRepository {
  Future<WeatherModel> getWeather(double lat, double lon);
}
