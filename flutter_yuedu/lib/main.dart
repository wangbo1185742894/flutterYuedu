import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
import 'package:oktoast/oktoast.dart';

import 'package:flutter_yuedu/routers/application.dart';
import 'package:flutter_yuedu/main/mainPage.dart';
import 'package:flutter_yuedu/routers/routers.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
//  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {

  MyApp(){
    final router = Router();
    Routes.routerConfig(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {


    return OKToast(child:
      MaterialApp(
        title: '爱尚阅读',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.cyan,
          accentColor: Colors.deepPurple,
          primarySwatch: Colors.yellow,
          scaffoldBackgroundColor: Colors.white,
          tabBarTheme: TabBarTheme(labelColor: Colors.black54,unselectedLabelColor: Colors.yellow,unselectedLabelStyle: TextStyle(color: Colors.green))
        ),
        home: MainPage(),
        onGenerateRoute: Application.router.generator,
      ),
      backgroundColor: Colors.black54,
      textPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      radius: 16,
      position: ToastPosition.bottom,
      dismissOtherOnShow: true,

    );
  }
}

