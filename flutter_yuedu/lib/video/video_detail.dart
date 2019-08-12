import 'package:flutter/material.dart';

class VideoDetailPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VideoDetailState();
  }
}

class VideoDetailState extends State <VideoDetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar:AppBar(title: Text("视频详情"),
                                  backgroundColor: Colors.white,),
                    body:Center(child: Text("body"),)
      ,);

  }

}