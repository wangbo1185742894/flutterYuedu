import 'package:flutter/material.dart';
import 'book_home.dart';

class  CountContainer extends InheritedWidget{

  static CountContainer of(BuildContext context) => context.inheritFromWidgetOfExactType(CountContainer) as CountContainer;

//  final int count;

  final Function() incream;
  final BookHomeState model;

  CountContainer({
      Key key,
    @required this.incream,
    @required this.model,
    @required Widget child
  }):super(key:key,child:child);

  @override
  bool updateShouldNotify(CountContainer oldWidget) {
    // TODO: implement updateShouldNotify
    return this.model.count != oldWidget.model.count;
  }

}
