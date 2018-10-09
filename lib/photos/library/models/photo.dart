import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  final String cameraMake;
  final String cameraModel;
  final double focalLength;
  final double apertureFNumber;
  final double isoEquivalent;
  final String exposureTime;

  Photo(
      {this.cameraMake,
      this.cameraModel,
      this.focalLength,
      this.apertureFNumber,
      this.isoEquivalent,
      this.exposureTime});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
