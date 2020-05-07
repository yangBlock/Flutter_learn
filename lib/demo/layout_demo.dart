import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
//        spaceAround 空间分配到小部件周围
//        spaceBetween 空间分配到小部件之间
//        spaceEvenly 空间平均分配到小部件之间
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//主轴
//        crossAxisAlignment: CrossAxisAlignment.end,//交叉轴
//        children: <Widget>[
//          IconBadge(Icons.pool),
//          IconBadge(Icons.beach_access, size: 64,),
//          IconBadge(Icons.airplanemode_active),
//        ],
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StackDemo(),
//          AspectRatioDemo(),
//          ConstraineBoxDemo(),
        ],
      ),
    );
  }
}
class ConstraineBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(//限制子部件的宽高
      constraints: BoxConstraints(
        maxHeight: 200.0,
        maxWidth: 200.0,
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(//设置子部件的宽高比例
      aspectRatio:16.0/9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment(0.0, -0.9),//子部件在父部件里的位置
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              shape: BoxShape.circle,//设置圆形
              gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 54, 255, 1.0),
                  ]),
            ),
            child: Icon(Icons.brightness_2, color: Colors.white,size: 32.0),
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 12.0),
        ),
        Positioned(
          right: 40.0,
          top: 80.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 16.0),
        ),
        Positioned(
          right: 70.0,
          top: 180.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 10.0),
        ),
        Positioned(
          right: 30.0,
          top: 230.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 18.0),
        ),
        Positioned(
          right: 90.0,
          bottom: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 16.0),
        ),
        Positioned(
          right: 4.0,
          bottom: -4.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 26.0),
        ),
        Positioned(
          right: 20.0,
          top: 120.0,
          child: Icon(Icons.ac_unit, color: Colors.white,size: 16.0),
        ),
      ],
    );
  }
}
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  
  IconBadge(this.icon,{
    this.size = 32.0,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon,size: size,color: Colors.white),
      width: size+60,
      height: size+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}