import 'package:flutter/material.dart';
import 'package:flutter_yuedu/routers/fluro_navigator.dart';
import 'package:flutter_yuedu/routers/routers.dart';
import 'package:flutter_yuedu/net_util/HttpUtil.dart';
import 'package:flutter_yuedu/net_util/Api.dart';
import 'pictureList.dart';

import 'PictureCate.dart';

import 'dart:convert';

class PictureHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PictureHomeState();
  }
}

class PictureHomeState extends State<PictureHome>
    with TickerProviderStateMixin {
  int page = 0;

  TabController _tabController;

  ScrollController _refreshCont;

  PictureCateEntity pictureCate = PictureCateEntity(List());

  Map<int, List<PictureList>> imageMap = Map();

  @override
  void initState() {
    _refreshCont = ScrollController();
    _tabController =
        TabController(length: this.pictureCate.cates.length, vsync: this)
          ..addListener(() {
            loadNewData(pictureCate.cates[_tabController.index].id);
          });

    _refreshCont.addListener(() {
      var position = _refreshCont.position;
      // 小于50px时，触发上拉加载；
      if (position.maxScrollExtent - position.pixels < 50) {
        loadMoreData(pictureCate.cates[_tabController.index].id);
      }
    });
    getImageCate();
    super.initState();
  }

  void getImageCate() async {
    Map cateData = {
      "edition": "2",
      "token": "1CECE2221211DDCB613882C3311EC670",
      "versionCode": "9"
    };
    var respon = await HttpUtil().post(Api.Picture_Cate_URL, data: cateData);
    Map cate = json.decode(respon.toString());

    setState(() {
      this.pictureCate = PictureCateEntity.fromjson(cate);
      _tabController =
          TabController(length: this.pictureCate.cates.length, vsync: this)
            ..addListener(() {
              loadNewData(pictureCate.cates[_tabController.index].id);
            });
      loadNewData(this.pictureCate.cates.first.id);
    });
  }

  Future getImageList(int id) async {
    ///edition=2&token=1CECE2221211DDCB613882C3311EC670&p=1&cate_id=102&versionCode=9
    Map listData = {
      "edition": "2",
      "token": "1CECE2221211DDCB613882C3311EC670",
      "p": page,
      "cate_id": id,
      "versionCode": "9"
    };

    var respon = await HttpUtil().post(Api.Picture_List_URL, data: listData);
    Map listMap = json.decode(respon.toString());
    if (imageMap[id] == null) {
      imageMap[id] = List();
    }

    setState(() {
      (listMap["data"] as List).forEach((v) {
        imageMap[id].add(PictureList.formJson(v));
      });
    });
  }

  loadMoreData(id) {
    page++;
    getImageList(id);
  }

  loadNewData(id) {
    page = 0;
    getImageList(id);
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
              onTap: (int index) {
                loadNewData(pictureCate.cates[index].id);
              },
              tabs: pictureCate.cates.map((f) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    f.cateName,
                    maxLines: 1,
                  ),
                );
              }).toList()),
        ),
        body:
        RefreshIndicator(child:  TabBarView(
            controller: _tabController,
            children: pictureCate.cates.map((f) {
              return Padding(
                padding: EdgeInsets.fromLTRB(6, 6, 6, 0),
                child: GridView.builder(
                  controller: _refreshCont,
                  itemCount: imageMap[f.id] == null ? 0 : imageMap[f.id].length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: jumpToDetail,
                      child: Container(
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
                                    imageMap[f.id][index].img ?? "",
                                    fit: BoxFit.cover,
                                  )),
                              Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    color: Colors.lightGreen,
                                    height: 44,
                                    child: Row(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          child: Container(
                                            child: Image.network(
                                              imageMap[f.id][index].headImg ??
                                                  "",
                                              fit: BoxFit.cover,
                                            ),
                                            height: 30,
                                            width: 30,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            imageMap[f.id][index].title,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          flex: 1,
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 0.7),
                ),
              );
            }).toList()), onRefresh: (){
          loadNewData(pictureCate.cates[_tabController.index].id);
        })

    );
  }

  jumpToDetail() {
    NavigatorUtils.push(context, Routes.pictureDetailPage);
  }
}
