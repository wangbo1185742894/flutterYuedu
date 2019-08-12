import 'package:flutter/material.dart';
import 'package:flutter_yuedu/routers/fluro_navigator.dart';
import 'package:flutter_yuedu/routers/routers.dart';

class BookHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookHomeState();
  }

}

class BookHomeState extends State<BookHome>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: FlatButton(onPressed:this.jumpToDetail, child: Center(child: Text("FlatButton"),)),);
  }

  jumpToDetail(){
    NavigatorUtils.push(context, Routes.videoDetail);
  }
  
  
  
}