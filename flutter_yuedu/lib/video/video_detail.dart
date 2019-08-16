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

//    Center(child: Text("作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Github社区知名开发者，是dio、fly、dsBridge等多个知名开源项目作者。曾就职于百度、小赢科技等互联网公司，从事过PC桌面开发、移动端开发以及Web开发，负责过多次核心技术攻关，现就职于字节跳动业务团队，目前闲暇时，主要关注大前端行业发展。",
//      textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.red),),)

  TextStyle styleRed =  TextStyle(fontSize: 40,color: Colors.red);
  TextStyle styleblack =  TextStyle(fontSize: 20,color: Colors.black87);

    return Scaffold(appBar:AppBar(title: Text("视频详情"),
                                  backgroundColor: Colors.white,),
//                    body: Center(child: Text(""),)
                    body: Center(child: FadeInImage.assetNetwork(placeholder: "", image: "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg"),)
//                    body:Center(child: Text.rich(TextSpan(children: <TextSpan>[
//                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleblack),
//                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleRed),
//                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleblack),
//                      TextSpan(text:"作者wendux，高级技术专家(前端方向)、掘金知名专栏作者、Flutter中文网发起人、Flutter中文社区开源项目发起人；Githu",style: styleRed),
//                    ])),)
      ,);

  }

}