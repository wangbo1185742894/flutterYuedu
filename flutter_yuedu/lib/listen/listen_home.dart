import 'package:flutter/material.dart';

class ListenHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListenHomeState();
  }
}

class ListenHomeState extends State<ListenHome> {
  ScrollController _controller;
  bool _tagTop = false;

  @override
  void initState() {
    _controller = ScrollController();
//    _controller.addListener(() {
//      if (_controller.offset > 100) {
//        setState(() {
//          _tagTop = true;
//        });
//      } else if (_controller.offset < 300) {
//        setState(() {
//          _tagTop = false;
//        });
//      }
//    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("customScrollView"),
      ),
      body: NotificationListener(
        onNotification: (scrollNotification){
          if (scrollNotification is ScrollStartNotification){
            print("ScrollStartNotification");
          }
          if (scrollNotification is ScrollUpdateNotification){
            if (scrollNotification.metrics.pixels> 100) {
              setState(() {
                _tagTop = true;
              });
            } else if (scrollNotification.metrics.pixels < 300) {
              setState(() {
                _tagTop = false;
              });
            }
            print("ScrollUpdateNotification");
          }
          if (scrollNotification is ScrollEndNotification){

            print("ScrollEndNotification");
          }

        },
        child: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
            SliverAppBar(
//              floating: true,
              flexibleSpace: Image.network(
                  "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",fit: BoxFit.cover,),
              expandedHeight: 348,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(title: Text("listTitle标题")),
                    childCount: 100)),
          ],
        ),
      ),
      floatingActionButton: RaisedButton(
        onPressed: (_tagTop
            ? () {
                if (_tagTop == true) {
                  _controller.animateTo(.0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                }
              }
            : null),
        child: Text("top"),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
