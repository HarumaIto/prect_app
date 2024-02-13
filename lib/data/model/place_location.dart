import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_location.freezed.dart';

@freezed
class PlaceLocation with _$PlaceLocation {
  factory PlaceLocation({
    required String? cityName,
    required double? latitude,
    required double? longitude,
  }) = _PlaceLocation;
}