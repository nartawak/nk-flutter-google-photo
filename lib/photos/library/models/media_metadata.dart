import 'package:json_annotation/json_annotation.dart';

import 'photo.dart';
import 'video.dart';

part 'media_metadata.g.dart';

@JsonSerializable()
class MediaMetadata {
  final String creationTime;
  final String width;
  final String height;
  final Photo photo;
  final Video video;

  MediaMetadata(
      {this.creationTime, this.width, this.height, this.photo, this.video});

  factory MediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaMetadataToJson(this);
}
