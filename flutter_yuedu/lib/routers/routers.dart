import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'router_init.dart';

import 'package:flutter_yuedu/404.dart';
import 'package:flutter_yuedu/video/video_detail.dart';
import 'package:flutter_yuedu/book/pointer_event.dart';
import 'package:flutter_yuedu/book/AnimationPage.dart';

class Routes {
  static List <IRouterProvider> _listRouter = [];

  static String videoDetail = "/VideoDetailPage";

  static String pointerEvent = "/PointerEvent";

  static String animationPage = "/AnimationPage";

  static void routerConfig(Router router){

    router.notFoundHandler = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params){

        return WidgetNotFound();
    });

    router.define(videoDetail, handler:Handler(handlerFunc: (BuildContext context,Map<String ,List<String>> parm) => VideoDetailPage()));
    router.define(pointerEvent, handler:Handler(handlerFunc: (BuildContext context,Map<String ,List<String>> parm){

      return PointerEventPage(name: parm["name"].first);
    }));
    router.define(animationPage, handler:Handler(handlerFunc: (BuildContext context,Map<String ,List<String>> parm) => AnimationPage()));



    _listRouter.clear();
    _listRouter.forEach((iRouterProvider){
      iRouterProvider.initRouter(router);
    });


  }
}