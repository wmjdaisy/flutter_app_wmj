


import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AnimationState();
  }
}

class AnimationState extends State<AnimationPage>{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: new Text("动画界面"),
          ),
          body: Center(
            child: new Text("学习动画知识"),
          ),
        ),
        onWillPop: (){
          Navigator.pop(context,{"result_resume": '返回传值'});
        }
    );
  }
}