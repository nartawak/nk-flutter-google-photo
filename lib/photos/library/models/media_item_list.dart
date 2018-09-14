import 'package:json_annotation/json_annotation.dart';
import 'media_item.dart';

part 'media_item_list.g.dart';

@JsonSerializable()
class MediaItemList {
  final List<MediaItem> mediaItems;
  final String nextPageToken;

  MediaItemList({this.mediaItems, this.nextPageToken});

  factory MediaItemList.fromJson(Map<String, dynamic> json) =>
      _$MediaItemListFromJson(json);

  Map<String, dynamic> toJson() => _$MediaItemListToJson(this);
}
