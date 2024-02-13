import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    required String? main,
    required String? description,
    required int? temp,
    required int? humidity,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) {
    final weather = json['weather'].first;
    final main = json['main'];
    return Weather(
      main: weather['main'],
      description: weather['description'],
      temp: main['temp'].toInt(),
      humidity: main['humidity'].toInt()
    );
  }
}