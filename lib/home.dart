import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import 'package:zegocloud2/data.dart';

class Home extends StatefulWidget {

  final String user_name;
  final String user_id;
  final bool isHost;

  Home( this.user_name, this.user_id, this.isHost);

  @override
  State<Home> createState() => _HomeState(isHost,user_name,user_id);
}

class _HomeState extends State<Home> {

  final bool isHost;
  final String user_name;
  final String user_id;

  _HomeState( this.isHost, this.user_name, this.user_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZegoUIKitPrebuiltLiveStreaming(
        appID: app_id,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: app_sign,// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: user_id,
        userName: user_name,
        liveID: '1234',
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
