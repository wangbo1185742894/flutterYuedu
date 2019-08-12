import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'router_init.dart';

import 'package:flutter_yuedu/404.dart';
import 'package:flutter_yuedu/video/video_detail.dart';

class Routes {
  static List <IRouterProvider> _listRouter = [];

  static String videoDetail = "/VideoDetailPage";

  static void routerConfig(Router router){

    router.notFoundHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params){

        return WidgetNotFound();
    });

    router.define(videoDetail, handler:Handler(handlerFunc: (BuildContext context,Map<String ,List<String>> parm) => VideoDetailPage()));

    _listRouter.clear();
    _listRouter.forEach((iRouterProvider){
      iRouterProvider.initRouter(router);
    });


  }
}