import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>  with TickerProviderStateMixin{

  AnimationController animationDemoController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationDemoController = AnimationController(
      value: 32.0,//初始值
      lowerBound: 0.0,//开始值
      upperBound: 100.0,//结束值
      duration: Duration(milliseconds: 3000),
      vsync: this,
    );
    animationDemoController.addListener(() { 
//      print('${animationDemoController.value}');
      setState(() {
        
      });
    });

//    animationDemoController.forward();//开始播放动画
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationDemoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
          label: Text('${animationDemoController.value}'),
          onPressed: () {
            animationDemoController.forward();
          },
      ),
    );
  }
}
