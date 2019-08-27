import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_yuedu/book/my_flexible_space_bar.dart';

import 'dart:math';

class MineHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MineHomeState();
  }
}

class MineHomeState extends State<MineHome> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
//      physics: ClampingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
//          backgroundColor: Colors.white,
          expandedHeight: 300,
          floating: false,
          pinned: true,
//          title: Text("SliverAppBar", textAlign: TextAlign.center),
          flexibleSpace: FlexibleSpaceBar(

            background: Image.network(
              "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
              width: double.infinity,
              height: 113.0,
              fit: BoxFit.fill,
            ),
            centerTitle: true,
            titlePadding: const EdgeInsetsDirectional.only(start: 16.0, bottom: 14.0),
            collapseMode: CollapseMode.pin,
            title: Text('订单'),

          ),
//          bottom: TabBar(
//              labelPadding: EdgeInsets.all(0),
//              tabs: [
//                Container(
//                  width: MediaQuery.of(context).size.width / 4,
//                  child: Text("TabBar1"),
//                  height: 44,
//                ),
//                Container(
//                  width: MediaQuery.of(context).size.width / 4,
//                  child: Text("TabBar1"),
//                  height: 44,
//                ),
//                Container(
//                  width: MediaQuery.of(context).size.width / 4,
//                  child: Text("TabBar1"),
//                  height: 44,
//                ),
//                Container(
//                  width: MediaQuery.of(context).size.width / 4,
//                  child: Text("TabBar1"),
//                  height: 44,
//                ),
//              ],
//              controller: TabController(length: 4, vsync: this)),
        ),
        SliverPersistentHeader(
          pinned: true,
            delegate: _SliverAppBarDelegate(
                minHeight: 100,
                maxHeight: 100,
                child: Container(
                  child: Image.network(
                    "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
                    fit: BoxFit.fill,
                  ),
                ))),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Image.network(
                  "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
                  fit: BoxFit.cover,
                ),
              );
            },
            childCount: 10,
          ),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 300,
            child: Image.network(
              "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
              fit: BoxFit.cover,
            ),
          );
        }, childCount: 10)),
      ],
    );

//      Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "更新提示",
//          style: TextStyle(color: Colors.white, fontSize: 18),
//        ),
//        backgroundColor: Colors.blue,
//      ),
//      body:
////      Container(
////        color: Theme.of(context).primaryColor,
////        child: Padding(
////          padding: EdgeInsets.all(10),
////          child: Column(
////            children: <Widget>[
//////              buildTop(),
//////              buildRow(),
////            ],
////          ),
////        ),
////      ),
//    );
  }

  Widget buildTop() {
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
              children: <Widget>[
                Text("社区人"),
                Text(formatDate(DateTime.now(),
                    [yyyy, "年", mm, "月", dd, "日", hh, ":", n, ":", s]))
              ],
            )),
        Padding(
          padding: EdgeInsets.all(10),
          child: FlatButton(onPressed: () => {}, child: Text("open")),
        )
      ],
    );
  }

  Widget buildRow() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。"),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text("version5.1.4,119M"),
          )
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
