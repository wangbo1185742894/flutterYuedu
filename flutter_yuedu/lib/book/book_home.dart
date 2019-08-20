import 'package:flutter/material.dart';
import 'package:flutter_yuedu/routers/fluro_navigator.dart';
import 'package:flutter_yuedu/routers/routers.dart';
import 'dart:math';

class BookHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookHomeState();
  }
}

class BookHomeState extends State<BookHome> {
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
          title: Text("标题"),
        ),
        body: Container(
          child: CustomPaint(
            painter: TempPainter(),
            size: Size(300, 300),
          ),
        ));
//        Stack(
//          children: <Widget>[
//            Container(
//              width: 300,
//              height: 300,
//              color: Colors.redAccent,
//            ),
//            Positioned(
//                left: 20,
//                top: 20,
//                child: Container(
//                  color: Colors.greenAccent,
//                  width: 50,
//                  height: 50,
//                )),
//            Positioned(
//              left: 44,
//              top: 44,
//              child: Container(
//                  width: 250,
//                  height: 250,
//                  child: Text(
//                      "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。")),
//            )
//          ],
//        )

//        crossAxisAlignment: CrossAxisAlignment.end,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
////          Expanded(
////              flex: 1,
////              child: Column(
////                children: <Widget>[
////                  Container(
////                    color: Colors.redAccent,
////                    height: 100,
////                  ),
////                  Container(
////                    color: Colors.greenAccent,
////                    height: 100,
////                  ),
////                  Container(
////                    color: Colors.blueGrey,
////                    height: 100,
////                  ),
////                  Container(
////                    color: Colors.deepOrangeAccent,
////                    height: 100,
////                  ),
////                ],
////              )),
////          Expanded(
////              flex: 1,
////              child: Container(
////                color: Colors.redAccent,
////                height: 200,
////              )),
//          Container(
//            color: Colors.greenAccent,
//            width: 60,
//            height: 100,
//          ),
//          Container(
//            color: Colors.blueGrey,
//            width: 60,
//            height: 60,
//          ),
//          Container(
//            color: Colors.deepOrangeAccent,
//            width: 60,
//            height: 150,
//          ),
//        ],
//      ),

//        Padding(
//
//            padding: EdgeInsets.all(10.0),
//
//            child: Text("在这个示例中，我将一段较长的文字，"
//                "包装在一个红色背景、圆角边...极客时间版权所有: "
//                "https://time.geekbang.org/column/article/110848"))
//      Container(
//        child: Text(
//            "在这个示例中，我将一段较长的文字，包装在一个红色背景、圆角边...极客时间版权所有: https://time.geekbang.org/column/article/110848"),
//        padding: EdgeInsets.all(10.0),
//        margin: EdgeInsets.all(10.0),
//        width: 200,
//        height: 200,
//        alignment: Alignment.center,
//        decoration: BoxDecoration(
//            color: Colors.yellow, borderRadius: BorderRadius.circular(10.0),boxShadow: [BoxShadow(color: Colors.redAccent,offset: Offset(10,10),blurRadius: 10,spreadRadius: 0),BoxShadow(color: Colors.green,offset: Offset(5,5),blurRadius: 10,spreadRadius: 0)]),
//      ),
  }

  jumpToDetail() {
    NavigatorUtils.push(context, Routes.videoDetail);
  }
}

class TempPainter extends CustomPainter {
  Paint getPaintColor(Color color) {
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double wheelHeight = min(size.width, size.height) / 2;
    int count = 10;
    double radio = (2 * pi) / count;
    Rect wheelRect = Rect.fromCircle(
        center: Offset(wheelHeight, wheelHeight), radius: wheelHeight);
    Rect wheelRect1 = Rect.fromCircle(
        center: Offset(wheelHeight, wheelHeight), radius: wheelHeight - 5);
    for (var i = 0; i < count - 1; i++) {
      canvas.drawArc(
          wheelRect,
          radio * i,
          radio,
          true,
          i % 2 == 0
              ? getPaintColor(Colors.green)
              : getPaintColor(Colors.deepOrangeAccent));


    }

    canvas.drawArc(
        wheelRect1,
        0,
        2 * pi,
        true,
        getPaintColor(Colors.white));

//    canvas.drawArc(wheelRect, 0, radio, true, getPaintColor(Colors.green));
//    canvas.drawArc(wheelRect, radio, radio, true, getPaintColor(Colors.deepPurpleAccent));
//    canvas.drawArc(wheelRect, radio * 2, radio , true, getPaintColor(Colors.deepOrangeAccent));
//    canvas.drawArc(wheelRect, radio * 3, radio , true, getPaintColor(Colors.blueGrey));
//    canvas.drawArc(wheelRect, radio * 4, radio , true, getPaintColor(Colors.cyan));
//    canvas.drawArc(wheelRect, radio * 5, radio , true, getPaintColor(Colors.lightBlue));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
}
