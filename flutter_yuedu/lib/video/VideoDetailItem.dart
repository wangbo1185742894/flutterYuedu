import 'package:flutter/material.dart';

class VideoDetailItem extends StatelessWidget {
  final Object model;

  VideoDetailItem({
    Key key,
    @required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            child: Image.network(
                "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg"),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("一键获取报价,千万用户真实评价,千万用户真实评价",
                      style: TextStyle(fontSize: 17),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  Text(
                    "一键获取报价,千万用户真实评价,",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
