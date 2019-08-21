import 'package:flutter/material.dart';

import 'package:flutter_yuedu/book/CountContainer.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_yuedu/routers/application.dart';

class PointerEventPage extends StatefulWidget {

  var name = "";

  PointerEventPage({Key key,this.name}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return PointerEventState();
  }
}

class PointerEventState extends State<PointerEventPage> {
  var msg = "";
  @override
  void initState() {

//    Application.bookEventBus.on<String>().listen((event){
//      setState(() {
//        msg = event;
//      });
//    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // TOD: implement build
    CountContainer state = CountContainer.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("PointerEvent${widget.name}"),
        ),
        body: Column(
          children: <Widget>[
            Text("$msg"),
            Container(
              height: (MediaQuery
                  .of(context)
                  .size
                  .height - 64) / 2,
              child: Listener(
                child: Container(
                  color: Colors.redAccent,
                ),
                onPointerDown: (event) =>
                    print("onPointerDown:$event" +
                        MediaQuery
                            .of(context)
                            .padding
                            .top
                            .toString()),
                onPointerMove: (event) => print("onPointerMove:$event"),
                onPointerUp: (event) =>
                    print("onPointerUp:$event" + event.position.toString()),
              ),
            ),
//            Container(
//                color: Colors.deepPurpleAccent,
//                height: (MediaQuery
//                    .of(context)
//                    .size
//                    .height - 64) / 2 - 15,
//                child: CountContainer(count: 0, child: GestureDetector(
//                  onDoubleTap: () => print("onDoubleTap"),
//                  onTap: () => print("onTap"),
//                  onLongPress: () => print("onLongPress"),
//                  onLongPressStart: (event) => print("onLongPressStart$event"),
//                  onPanUpdate: (event) => print("onPanUpdate$event"),
//                ),),
//            ),
          ],
        ));
  }
}
