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
  Animation animation;
  Animation animationColor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationDemoController = AnimationController(
//      value: 32.0,//初始值
//      lowerBound: 32.0,//开始值
//      upperBound: 100.0,//结束值
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    animation = Tween(begin: 32.0,end: 100.0).animate(animationDemoController);
    animationColor = ColorTween(begin: Colors.red, end: Colors.red[900]).animate(animationDemoController);
    animationDemoController.addListener(() { 
//      print('${animationDemoController.value}');
      setState(() {
        
      });
    });
    animationDemoController.addStatusListener((status) {
      print(status);
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
      child: IconButton(
          icon: Icon(Icons.favorite),
          iconSize: animation.value,
          color: animationColor.value,
          onPressed: () {
            switch (animationDemoController.status) {
              case AnimationStatus.completed:
                animationDemoController.reverse();//倒退播放动画
                break;
              default:
                animationDemoController.forward();
            }
          },
      ),
    );
  }
}
