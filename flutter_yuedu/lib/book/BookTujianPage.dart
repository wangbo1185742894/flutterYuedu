import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'BookListItem.dart';

class BookTuijianPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookTuijianPageState();
  }
}

class BookTuijianPageState extends State<BookTuijianPage> {
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
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              height: 180,
              child: Swiper(
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        size: 6,
                        activeSize: 8,
                        color: Colors.white,
                        activeColor: Colors.redAccent,
                        space: 6)),
                autoplay: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((BuildContext context, int index) {
                  return Container(
                    child: Image.network(
                      "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1487351610,315303232&fm=26&gp=0.jpg",
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            );
          } else if (index == 1) {
            return Row(
                children: _titles.map((f) {
              return Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 6),
                      width: 44,
                      height: 44,
                      child: ClipRRect(
                        child: Image.network(
                            "https://avatar.csdn.net/7/1/7/3_qq_27981847.jpg"),
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    Text(
                      f,
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    )
                  ],
                ),
              );
            }).toList());
          } else {
            return  BookListItem();
          }
        },
      ),
    );
  }
}
