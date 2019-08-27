import 'package:flutter/material.dart';
import 'VideoDetailItem.dart';

class VideoDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VideoDetailState();
  }
}

class VideoDetailState extends State<VideoDetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("视频详情"),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(color: Colors.cyan,height: 200, child: Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3441742992,2765570575&fm=26&gp=0.jpg",fit: BoxFit.fill,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(

                    padding: EdgeInsets.all(10),
                    child: Text("樱桃小丸子",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 16),
                    child: Row(
                      children: <Widget>[
                        Text("播放2123次"),
                        Padding(padding: EdgeInsets.all(10)),
                        Text("0评论")
                      ],
                    ),

                  ),
                  Container(height: 1,color: Colors.black12,)
                ],
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemExtent: 100,
                        itemBuilder: (BuildContext context, int index) {
                          return VideoDetailItem();
                        }),
                  ))
            ],
          ),
        ));
  }
}

/////////////////////////////////练习时 垃圾代码

//return Scaffold(appBar:AppBar(title: Text("视频详情"),
//backgroundColor: Colors.white,),
////                    body: Center(child: Text(""),)
//body: Center(child: FadeInImage.assetNetwork(placeholder: "", image: "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg"),)
////                    body:Center(child: Text.rich(TextSpan(children: <TextSpan>[
////                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleblack),
////                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleRed),
////                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleblack),
////                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleRed),
////                    ])),)
//,);
