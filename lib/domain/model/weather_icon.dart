import 'package:flutter/material.dart';

enum WeatherIcon {
  clear(code: 0, icon: Icon(Icons.sunny)),
  cloudy(code: 1, icon: Icon(Icons.cloud)),
  someCloudy(code: 2, icon: Icon(Icons.cloud_circle)),
  overcast(code: 3, icon: Icon(Icons.cloud_circle_rounded)),
  fog(code: 45, icon: Icon(Icons.foggy)),
  rimeFog(code: 48, icon: Icon(Icons.cloud_done)),
  drizzle(code: 51, icon: Icon(Icons.cloud_circle_outlined)),
  drizzleModerate(code: 53, icon: Icon(Icons.cloud_download_rounded)),
  drizzleDense(code: 55, icon: Icon(Icons.ac_unit_outlined)),
  freezing(code: 56, icon: Icon(Icons.ice_skating)),
  freezingDense(code: 57, icon: Icon(Icons.ice_skating_outlined)),
  rain(code: 61, icon: Icon(Icons.umbrella)),
  rainModerate(code: 63, icon: Icon(Icons.umbrella_outlined)),
  rainHeavy(code: 65, icon: Icon(Icons.umbrella_rounded)),
  freezingRain(code: 66, icon: Icon(Icons.umbrella_sharp)),
  freezingRainHeavy(code: 67, icon: Icon(Icons.ice_skating_sharp)),
  snow(code: 71, icon: Icon(Icons.snowing)),
  snowModerate(code: 73, icon: Icon(Icons.cloudy_snowing)),
  snowHeavy(code: 75, icon: Icon(Icons.sunny_snowing)),
  snowGrains(code: 77, icon: Icon(Icons.snowboarding)),
  rainShowers(code: 80, icon: Icon(Icons.shower)),
  rainShowersModerate(code: 81, icon: Icon(Icons.shower_outlined)),
  rainShowersViolent(code: 82, icon: Icon(Icons.shower_rounded)),
  snowShower(code: 85, icon: Icon(Icons.snowmobile)),
  snowShowerHeavy(code: 86, icon: Icon(Icons.snowmobile_outlined)),
  thunderStorm(code: 95, icon: Icon(Icons.thunderstorm)),
  thunderStormSlight(code: 96, icon: Icon(Icons.thunderstorm_outlined)),
  thunderStormHeavy(code: 99, icon: Icon(Icons.thunderstorm_sharp));

  final num code;
  final Icon icon;

  const WeatherIcon({
    required this.code,
    required this.icon
  });
}