import 'dart:io';

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:jrs_online_classes/modals/channel_info.dart';
// import 'package:jrs_online_classes/utils/Constants.dart';
//
// class Services {
//   static const CHANNEL_ID = 'UCG7I5joiEdyQAKY9Mjw481g';
//   static const _baseUrl = 'youtube.googleapis.com';
//
//   static Future<ChannelInfo> getChannelInfo() async {
//     Map<String, String> parameters = {
//       'part': 'snippet,contentDetails,statistics',
//       'id': CHANNEL_ID,
//       'key': Constants.KEY,
//     };
//     Map<String, String> headers = {
//       HttpHeaders.contentTypeHeader: 'application/json',
//     };
//     Uri uri = Uri.http(_baseUrl, 'youtube/v3/channels', parameters);
//     Response response = await http.get(uri, headers: headers);
//     print(response.body);
//     ChannelInfo channelInfo = channelInfoFromJson(response.body);
//     return channelInfo;
//   }
// }
