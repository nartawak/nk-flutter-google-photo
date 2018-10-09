import 'package:json_annotation/json_annotation.dart';

import 'contributor_info.dart';
import 'media_metadata.dart';

part 'media_item.g.dart';

@JsonSerializable()
class MediaItem {
  final String id;
  final String description;
  final String productUrl;
  final String baseUrl;
  final String mimeType;
  final MediaMetadata mediaMetadata;
  final ContributorInfo contributorInfo;
  final String filename;

  MediaItem(
      {this.id,
      this.description,
      this.productUrl,
      this.baseUrl,
      this.mimeType,
      this.mediaMetadata,
      this.contributorInfo,
      this.filename});

  factory MediaItem.fromJson(Map<String, dynamic> json) =>
      _$MediaItemFromJson(json);

  Map<String, dynamic> toJson() => _$MediaItemToJson(this);
}
