import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRoute {
  static Route<T> getRoute<T>(Object object) {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return object;
      },
      transitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child){
          return ;
      },
    );
  }
}
