import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant.freezed.dart';

enum PlantDocumentKey {
  name,
  plant_type,
}

@freezed
class Plant with _$Plant {
  factory Plant({
    @Default('') String name,
    @Default('') String plantType,
  }) = _Plant;

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      name: json[PlantDocumentKey.name.name],
      plantType: json[PlantDocumentKey.plant_type.name],
    );
  }
}