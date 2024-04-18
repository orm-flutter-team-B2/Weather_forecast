import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/data/dto/weather_dto.dart';

class WeatherApi {
  final http.Client _client;
  final String baseUrl = 'https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl';

  Future<WeatherDto> getWeatherDto(double lat, double lon) async {
    final response = await _client.get(
        Uri.parse('$baseUrl&latitude=$lat&longitude=$lon'));
    final jsonString = jsonDecode(response.body);

    return WeatherDto.fromJson(jsonString);
  }

  WeatherApi({
    http.Client? client,
  }) : _client = client ?? http.Client();
}
