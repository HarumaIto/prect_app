import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prect/data/model/place_location.dart';
import 'package:prect/data/model/weather.dart';
import 'package:prect/data/repository/preferences_repository.dart';
import 'package:prect/data/repository/weather_repository.dart';

final fetchLocationWeatherUseCaseProvider =
    Provider<LocationWeatherUseCase>((ref) {
  final prefRepository = ref.watch(preferencesRepositoryProvider);
  final weatherRepository = ref.watch(weatherRepositoryProvider);

  return LocationWeatherUseCase(
      preferencesRepository: prefRepository,
      weatherRepository: weatherRepository);
});

class LocationWeatherUseCase {
  LocationWeatherUseCase({
    required PreferencesRepository preferencesRepository,
    required WeatherRepository weatherRepository,
  })  : _preferencesRepository = preferencesRepository,
        _weatherRepository = weatherRepository;

  final PreferencesRepository _preferencesRepository;
  final WeatherRepository _weatherRepository;

  Future<Map<String, dynamic>> callMainBody() async {
    final placeLocation = await _setupPlaceLocation();
    final weather = await _getWeather(placeLocation);

    return {
      'placeLocation': placeLocation,
      'weather': weather,
    };
  }

  Future callMyPage() async {
    return await _setupPlaceLocation();
  }

  Future<PlaceLocation> _setupPlaceLocation() async {
    await _preferencesRepository.connect();
    var placeLocation = await _preferencesRepository.readPlaceLocation();
    if (placeLocation.cityName!.isNotEmpty) {
      return placeLocation;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    final position = await Geolocator.getCurrentPosition();
    final latitude = position.latitude;
    final longitude = position.longitude;
    print(position);

    final placeMarks = await placemarkFromCoordinates(
      latitude,
      longitude,
      localeIdentifier: 'jpJP',
    );
    final placeMark = placeMarks.first;
    final locality = placeMark.locality;
    print(placeMark);

    return PlaceLocation(
      cityName: locality,
      latitude: latitude,
      longitude: longitude,
    );
  }

  Future<Weather> _getWeather(PlaceLocation placeLocation) async {
    return await _weatherRepository.fetchWeather(
        placeLocation.latitude!, placeLocation.longitude!);
  }
}
