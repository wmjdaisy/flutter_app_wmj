import 'package:flutter/material.dart';
import 'package:flutter_app_wmj/animation/animation_page.dart';
import 'package:flutter_app_wmj/route/navigation_util.dart';

import 'bean/base_bean.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter学习记录',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '学习列表'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var _strlist = [
    BaseBean("动画知识",new AnimationPage()),
  ];

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///默认构建
  Widget listViewDefault(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10.0),
      itemCount: widget._strlist.length * 2,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, i) => itemLayout(context, i),
    );
  }

  Widget itemLayout(BuildContext context, int index) {
    //奇数显示分割线
    if (index.isOdd) {
      return new Divider(
        height: 1.0,
      );
    } else {
      //偶数显示布局
      index = index ~/ 2;
      return new InkWell(
        child: new Container(
          child: ListTile(
            leading: new Icon(Icons.android),
            title: new Text(widget._strlist[index].name),
            trailing: new Icon(Icons.image),
          ),
        ),
        onTap: (){
          NavigationUtil.pushNouter(context, widget._strlist[index].object, (Map str){
            print(str["result_resume"]);
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: listViewDefault(context),
    );
  }
}
