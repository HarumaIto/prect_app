import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_source/weather_api_client.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final client = WeatherApiClient();
  return WeatherRepository(client);
});

class WeatherRepository {
  const WeatherRepository(this._client,);

  final WeatherApiClient _client;

  dynamic fetchWeather(double latitude, double longitude) async {
    return _client.fetchWeather(latitude, longitude);
  }
}