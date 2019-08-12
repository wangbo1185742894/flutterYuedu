import 'package:flutter/material.dart';
import 'dart:ui';
class VideoHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VideoHomeState();
  }
}

class VideoHomeState extends State<VideoHome> with SingleTickerProviderStateMixin{
  var _tabController;
 List<String> _titleList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 16);
    _titleList = ["推荐","搞笑","影视","时尚","游戏","农人","舞蹈","社会","综艺","猎奇","音乐","美食","小品","汽车","要闻","美女",];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(title: Text("视频", style: TextStyle(fontSize: 18,color: Colors.black87),),
        backgroundColor: Colors.white,
        bottom: TabBar(
          isScrollable: true,
          indicatorColor:Color.fromRGBO(235, 30, 30, 1),
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black87,

          tabs:_titleList.map((f){
            return Text(f,style: TextStyle(fontSize: 16),);
          }).toList(),
          controller: _tabController,),
      ),
      body:new TabBarView(
          controller: _tabController,
          children: _titleList.map((f){
            return new ListView.builder(itemBuilder: (BuildContext context ,int index){
                return Wrap( children: <Widget>[
                  Image.network("http://pic31.nipic.com/20130801/11604791_100539834000_2.jpg",),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,children: <Widget>[

                    Row(children: <Widget>[
                      Text("评论 0",style: TextStyle(fontSize: 20),),
                      Text("播放 0",style: TextStyle(fontSize: 20),),
                    ],),
                    Row(

                      children: <Widget>[

                      Text("点赞 0",style: TextStyle(fontSize: 20),),
                      Text("差评 0",style: TextStyle(fontSize: 20),),
                    ],)
                  ],)
                ],);
            },
            itemCount: 100,
            itemExtent: 250);
          }).toList(),
      ),
    );
  }
}