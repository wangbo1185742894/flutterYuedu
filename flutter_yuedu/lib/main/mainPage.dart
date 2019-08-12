import 'package:flutter/material.dart';
import 'package:flutter_yuedu/mine/mine_home.dart';
import 'package:flutter_yuedu/book/book_home.dart';
import 'package:flutter_yuedu/listen/listen_home.dart';
import 'package:flutter_yuedu/video/video_home.dart';
import 'package:flutter_yuedu/picture/picture_home.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage>{

  int _tabIndex = 0;
  var _pageList;
  var _tabTitleList = ['视频','书城','图片','听书','我'];
  var _pageControl = new PageController();

  @override
  void initState() {
    super.initState();
    initData();
  }

  Widget _buildTabTitle(int index){
    return Padding(padding: const EdgeInsets.only(top: 5.0),child: Text(_tabTitleList[index]),);
  }

  @override
  Widget build(BuildContext context) {


    return WillPopScope(child: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.share),title: _buildTabTitle(0)),
        BottomNavigationBarItem(icon: Icon(Icons.share),title: _buildTabTitle(1)),
        BottomNavigationBarItem(icon: Icon(Icons.share),title: _buildTabTitle(2)),
        BottomNavigationBarItem(icon: Icon(Icons.share),title: _buildTabTitle(3)),
        BottomNavigationBarItem(icon: Icon(Icons.share),title: _buildTabTitle(4)),
      ],
        type:BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        elevation: 5.0,
        iconSize: 21.0,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Color.fromRGBO(235, 30, 30, 1),
        unselectedItemColor: Color(0xff333333),
        onTap: (index){
          _pageControl.jumpToPage(index);
        },
      ),
      body: PageView(
        children: _pageList,
        controller: _pageControl,
        onPageChanged:OnPageChange,
        physics: NeverScrollableScrollPhysics(),
      ),
    ), onWillPop:()=>Future.value(true));

  }

  void OnPageChange(int index){
    setState(() {
      _tabIndex = index;
    });
  }

  void initData(){
    _pageList = [
      VideoHome(),
      BookHome(),
      PictureHome(),
      ListenHome(),
      MineHome()
    ];
  }
}