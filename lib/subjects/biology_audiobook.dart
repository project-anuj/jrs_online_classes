import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jrs_online_classes/modals/channel_info.dart';
import 'package:jrs_online_classes/utils/services.dart';

class BioAudioBook extends StatefulWidget {
  int color;
  BioAudioBook({this.color});

  @override
  _BioAudioBookState createState() => _BioAudioBookState();
}

class _BioAudioBookState extends State<BioAudioBook> {
  // ChannelInfo _channelInfo;
  // Item _item;
  // bool _loading;
  //
  // // @override
  // // void initState() {
  // //   super.initState();
  // //   _loading = true;
  // //   _getChannelInfo();
  // // }
  //
  // _getChannelInfo() async {
  //   _channelInfo = await Services.getChannelInfo();
  //   _item = _channelInfo.items[0];
  //   setState(() {
  //     _loading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "BIO-AUDIOBOOK",
          style: TextStyle(
              color: Color(widget.color),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Text("hi"),
            // _buildInfoView(),
          ],
        ),
      ),
    );
  }

  // _buildInfoView() {
  //   return _loading
  //       ? CircularProgressIndicator()
  //       : Container(
  //           child: Card(
  //             child: Row(
  //               children: [
  //                 CircleAvatar(
  //                   backgroundImage: CachedNetworkImageProvider(
  //                     _item.snippet.thumbnails.medium.url,
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 20,
  //                 ),
  //                 Text(
  //                   _item.snippet.title,
  //                   style: TextStyle(
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.w400,
  //                   ),
  //                 ),
  //                 Text(_item.statistics.videoCount),
  //                 SizedBox(
  //                   width: 20,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  // }
}
