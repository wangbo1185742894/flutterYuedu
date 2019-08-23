import 'package:flutter/material.dart';

class BookListHeader extends StatelessWidget {
  final String name;
  final String moreTitle;

  BookListHeader({@required this.name, this.moreTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        Text(
          moreTitle ?? "",
          style: TextStyle(color: Colors.black54, fontSize: 14),
        ),
      ],
    ));
  }
}
