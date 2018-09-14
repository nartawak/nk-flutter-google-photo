import 'package:json_annotation/json_annotation.dart';

import 'enums/video_processing_status.dart';

part 'video.g.dart';

@JsonSerializable()
class Video {
  final String cameraMake;
  final String cameraModel;
  final double fps;
  final VideoProcessingStatus status;

  Video({this.cameraMake, this.cameraModel, this.fps, this.status});

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
