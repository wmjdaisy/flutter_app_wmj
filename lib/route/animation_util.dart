

import 'package:flutter/cupertino.dart';

class AnimationUtil{
  static SlideTransition getCommomPageTransition(Animation<double> animation, Widget child){

    return SlideTransition(
        position: new Tween<Offset>(
          begin:new Offset(2.0, 0.0),
          end: new Offset(0.0, 0.0),
        ).animate(animation),
      child: child,
    );
  }


}