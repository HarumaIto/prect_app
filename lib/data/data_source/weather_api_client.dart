import 'package:dio/dio.dart';
import 'package:prect/data/model/weather.dart';

class WeatherApiClient {
  Future<Weather?> fetchWeather(double latitude, double longitude) async {
    final dio = Dio();
    const appId = '46ecc5f78a739054d2a70baae2c6d0b5&units=metric';
    final url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&lang=ja&appid=$appId';
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      try {
        return Weather.fromJson(response.data);
      } catch (e) {
        print('error: ' + e.toString());
        throw e;
      }
    }
    return null;
  }
}
