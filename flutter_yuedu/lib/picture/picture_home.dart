import 'package:flutter/material.dart';
import 'package:flutter_yuedu/routers/fluro_navigator.dart';
import 'package:flutter_yuedu/routers/routers.dart';

class PictureHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PictureHomeState();
  }
}

class PictureHomeState extends State<PictureHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> _titles;
  List<String> _images;

  @override
  void initState() {
    _titles = ["最新", "美女", "小清新", "明星", "AGG", "纹身"];
    _images = [
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
      "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
    ];
    _tabController = TabController(length: _titles.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "图片",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black54,
              labelColor: Colors.redAccent,
              indicatorColor: Colors.redAccent,

              controller: _tabController,

              tabs: _titles.map((f) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    f,
                    maxLines: 1,
                  ),
                );
              }).toList()),
        ),
        body: TabBarView(
            controller: _tabController,
            children: _titles.map((f) {
              return Padding(
                padding: EdgeInsets.fromLTRB(6, 6, 6, 0),
                child: GridView.builder(
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(onTap:jumpToDetail ,
                    child:  Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                bottom: 0,
                                left: 0,
                                top: 0,
                                right: 0,
                                child: Image.network(
                                  _images[index],
                                  fit: BoxFit.fitHeight,
                                )),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  color: Colors.red,
                                  height: 44,
                                  child: Row(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Container(
                                          child: Image.network(_images[index]),
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                      Expanded(child: Text("我家坤坤 可帅了我家坤坤 可帅了",maxLines: 1,overflow: TextOverflow.ellipsis,),flex: 1,)


                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),);
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 0.7),
                ),
              );
            }).toList()));
  }

  jumpToDetail(){
    NavigatorUtils.push(context, Routes.pictureDetailPage);
  }
}
