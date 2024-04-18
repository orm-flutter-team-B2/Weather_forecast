import 'package:weather/data/dto/weather_dto.dart';
import 'package:weather/domain/model/weather_model.dart';

extension ToWeatherModel on WeatherDto {
  WeatherModel toWeatherModel() {
    return WeatherModel(
        time: hourly?.time ?? [],
        temperature: hourly?.temperature2m ?? [],
        weatherCode: hourly?.weathercode ?? [],
        relativeHumidity: hourly?.relativehumidity2m ?? [],
        windSpeed: hourly?.windspeed10m ?? []
    );
  }
}