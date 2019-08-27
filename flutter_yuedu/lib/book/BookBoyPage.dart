import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'BookListItem.dart';
import 'BookListHeader.dart';
class BookBoyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookBoyPageState();
  }
}

class BookBoyPageState extends State<BookBoyPage> {
  List _titles = ["经典", "分类", "免费", "专题"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(


      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          if (index % 5 == 0) {
            return BookListHeader(name: _titles[3],moreTitle: "更多",);
          }else {
            return  BookListItem();
          }
        },
      ),
    );
  }
}
