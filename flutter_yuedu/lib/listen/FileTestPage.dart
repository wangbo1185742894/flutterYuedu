import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileTestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return FileTestPageState();
  }
}

class FileTestPageState extends State<FileTestPage> {

  String content = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 创建文件目录
  Future<File> get _localFile async {
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    return File('$path/content.txt');
  }

  // 将字符串写入文件
  Future<File> writeContent(String content) async {
    final file = await _localFile;
    return file.writeAsString(content);
  }

  // 从文件读出字符串
  Future<String> readContent() async {
    try{
      final file = await _localFile;
      String contents = await file.readAsString();
      return contents;
    }catch (e){
      return "";
    }
  }

  Future  getCount() async{
    SharedPreferences spre = await SharedPreferences.getInstance();
    int count = (spre.getInt("count") ?? 0);
    setState(() {
      this.content = count.toString();
    });

  }

  Future setCount()async{
    SharedPreferences spre = await SharedPreferences.getInstance();
    spre.setInt("count", 123456789);
  }

  void save(){
//    writeContent("文件测试123455435");
  setCount();
  }

  void read()async{
    getCount();
//    String content = await readContent();
//    setState(() {
//      this.content = content;
//    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("fileTest"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(onPressed: save, child: Text("保存文件")),
            FlatButton(onPressed: read, child: Text("读取文件")),
            Text(this.content)
          ],
        ),
      ),
    );
  }
}
