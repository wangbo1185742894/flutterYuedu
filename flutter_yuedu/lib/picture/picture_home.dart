import 'package:flutter/material.dart';

class PictureHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PictureHomeState();
  }
}

class PictureHomeState extends State<PictureHome>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("图片",style: TextStyle(fontSize: 18,color: Colors.redAccent),),),
                    body:ListView.separated(
                        itemCount: 100,
                        separatorBuilder: (BuildContext context , int index) => index %2 == 0? Divider(color:  Colors.green,) : Divider(color: Colors.redAccent,),
                        itemBuilder: (BuildContext context ,int index) => ListTile(title: Text("标题" + index.toString()),),

                    ),

    );
  }
}