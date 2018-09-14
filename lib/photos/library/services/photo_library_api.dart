import 'dart:async';
import "package:http/http.dart" as http;
import 'dart:convert' show json;
import 'package:google_sign_in/google_sign_in.dart';

import '../models/media_item_list.dart';

Future<MediaItemList> getMediaItems(GoogleSignInAccount user) async {
  assert(user != null);

  http.Response response = await http.get(
      'https://photoslibrary.googleapis.com/v1/mediaItems',
      headers: await user.authHeaders);

  if (response.statusCode == 200)
    return MediaItemList.fromJson(json.decode(response.body));

  // TODO : Manage error
  print('Photos API ${response.statusCode} response: ${response.body}');

  return MediaItemList(mediaItems: []);
}
