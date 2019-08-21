import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class MineHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MineHomeState();
  }
}

class MineHomeState extends State<MineHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "更新提示",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              buildTop(),
              buildRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTop(){
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
                height: 80,
                width: 80,
              )),
        ),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text("社区人"), Text(formatDate(DateTime.now(), [yyyy,"年",mm,"月",dd,"日",hh,":",n,":",s]))],
            )),
        Padding(
          padding: EdgeInsets.all(10),
          child: FlatButton(onPressed: () => {}, child: Text("open")),
        )
      ],
    );
  }

  Widget buildRow(){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。"),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text("version5.1.4,119M"),)
        ],
      ),
    );
  }

}
