import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_yuedu/routers/routers.dart';
import 'package:flutter_yuedu/routers/fluro_navigator.dart';
import 'package:dio/dio.dart';

class VideoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VideoHomeState();
  }
}

class VideoHomeState extends State<VideoHome>
    with SingleTickerProviderStateMixin {
  Dio _dio;

  var _tabController;
  List<String> _titleList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _dio = Dio(Options(connectTimeout: 5000, receiveTimeout: 100000));
    _tabController = new TabController(vsync: this, length: 16);
    _titleList = [
      "推荐",
      "搞笑",
      "影视",
      "时尚",
      "游戏",
      "农人",
      "舞蹈",
      "社会",
      "综艺",
      "猎奇",
      "音乐",
      "美食",
      "小品",
      "汽车",
      "要闻",
      "美女",
    ];
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 16, color: Colors.black54);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "视频",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Color.fromRGBO(235, 30, 30, 1),
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black87,
          tabs: _titleList.map((f) {
            return Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text(
                f,
                style: TextStyle(fontSize: 15),
              ),
            );
          }).toList(),
          controller: _tabController,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: _titleList.map((f) {
          return new ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: jumpVideo,
                child: Wrap(
                  children: <Widget>[
                    Image.network(
                      "http://pic31.nipic.com/20130801/11604791_100539834000_2.jpg",
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "评论 0",
                                    style: textStyle,
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "播放 0",
                                    style: textStyle,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "点赞 0",
                                    style: textStyle,
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "差评 0",
                                    style: textStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: 100,
          );
        }).toList(),
      ),
    );
  }

  void jumpVideo() {
    NavigatorUtils.push(context, Routes.videoDetail);
  }

//  http://www.api.23read.cn//video/column_list
//  edition=2&token=1CECE2221211DDCB613882C3311EC670&versionCode=9
  void  _getVideoCateList() async {
    Response response = await _dio.post("http://www.api.23read.cn//video/column_list", data: {
      "edition": "2",
      "token":"1CECE2221211DDCB613882C3311EC670",
      "versionCode":"9"
    });
  }
}
