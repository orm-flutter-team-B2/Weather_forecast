import 'package:flutter/material.dart';

enum WeatherIcon {
  clear(code: 0, icon: Icons.sunny),
  cloudy(code: 1, icon:Icons.cloud),
  someCloudy(code: 2, icon:Icons.cloud_circle),
  overcast(code: 3, icon:Icons.cloud_circle_rounded),
  fog(code: 45, icon:Icons.foggy),
  rimeFog(code: 48, icon:Icons.cloud_done),
  drizzle(code: 51, icon:Icons.cloud_circle_outlined),
  drizzleModerate(code: 53, icon:Icons.cloud_download_rounded),
  drizzleDense(code: 55, icon:Icons.umbrella),
  freezing(code: 56, icon:Icons.ice_skating),
  freezingDense(code: 57, icon:Icons.ice_skating_outlined),
  rain(code: 61, icon:Icons.umbrella_outlined),
  rainModerate(code: 63, icon:Icons.umbrella_outlined),
  rainHeavy(code: 65, icon:Icons.umbrella_rounded),
  freezingRain(code: 66, icon:Icons.umbrella_sharp),
  freezingRainHeavy(code: 67, icon:Icons.ice_skating_sharp),
  snow(code: 71, icon:Icons.snowing),
  snowModerate(code: 73, icon:Icons.cloudy_snowing),
  snowHeavy(code: 75, icon:Icons.sunny_snowing),
  snowGrains(code: 77, icon:Icons.snowboarding),
  rainShowers(code: 80, icon:Icons.shower),
  rainShowersModerate(code: 81, icon:Icons.shower_outlined),
  rainShowersViolent(code: 82, icon:Icons.shower_rounded),
  snowShower(code: 85, icon:Icons.snowmobile),
  snowShowerHeavy(code: 86, icon:Icons.snowmobile_outlined),
  thunderStorm(code: 95, icon:Icons.thunderstorm),
  thunderStormSlight(code: 96, icon:Icons.thunderstorm_outlined),
  thunderStormHeavy(code: 99, icon:Icons.thunderstorm_sharp);

  final num code;
  final IconData icon;

  const WeatherIcon({
    required this.code,
    required this.icon
  });

  factory WeatherIcon.getByCode(num code) {
    return WeatherIcon.values.firstWhere((element) => element.code == code);
  }
}