import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimationPageState();
  }
}

class AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  CurvedAnimation curvedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
//    animationController.repeat(reverse: true);
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.elasticOut);
    animation = Tween(begin: 50.0, end: 100.0).animate(curvedAnimation);

//    animation.addStatusListener((state){
//      if(state == AnimationStatus.completed){
//
//        animationController.reverse();
//      }
//      if(state == AnimationStatus.dismissed){
//        animationController.forward();
//      }
//    });
//
//    animation.addListener(() {
//      setState(() {});
//
//    });
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Container(
        child: AnimatedBuilder(animation: animation, builder: (context,child) => Container(
          width: animation.value,
          height: animation.value,
          child: Image.network(
            "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg"),
        )),
//        width: animation.value,
//        height: animation.value,
//        child: Image.network(
//            "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg"),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
