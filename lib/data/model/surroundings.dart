import 'package:prect/data/model/place_location.dart';
import 'package:prect/data/model/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'surroundings.freezed.dart';

@freezed
class Surroundings with _$Surroundings {
  factory Surroundings({
    required PlaceLocation placeLocation,
    required Weather weather,
  }) = _Surroundings;
}
