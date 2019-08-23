import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 110,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
            height: 110,
            width: 80,
            padding: EdgeInsets.all(10),
            child: Image.network(
              "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1487351610,315303232&fm=26&gp=0.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "铁骨金婚",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                        "中国作协李成是个狗瓜皮狗 大花狗  黄毛狗中国作协李成是个狗瓜皮狗 大花狗  黄毛狗中国作协李成是个狗瓜皮狗 大花狗  黄毛狗",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 13, color: Colors.black54)),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.person),
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                "瓜皮李成",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                      height: 16,
                                      decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.cyan),borderRadius: BorderRadius.circular(3)),
                                      child: Text(

                                        "军事小说",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.cyan),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                      height: 16,
                                      decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.cyan),borderRadius: BorderRadius.circular(3)),
                                      child: Text(

                                        "23万字",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.cyan),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                      height: 16,
                                      decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.cyan),borderRadius: BorderRadius.circular(3)),
                                      child: Text(

                                        "完本",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.cyan),
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      flex: 1,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

}

