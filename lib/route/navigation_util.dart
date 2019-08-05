//路由管理辅助类
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_wmj/route/page_route.dart';

class NavigationUtil{
  static void pushNouter<T>(BuildContext context,Object object,Function function){
    Navigator.push<T>(context,PageRouteUtil.getRoute(object)).then(
        (T t){
          function(t);
        }
    );
  }
}