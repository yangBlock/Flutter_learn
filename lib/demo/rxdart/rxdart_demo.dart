import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    Stream<String> _stream =  Stream.fromIterable(['hello','你好']);
    Stream _stream = Stream.periodic(Duration(seconds: 3),(x) => x.toString());//间隔3秒，打印重复的次数
    _stream.listen((event) {
      print(event);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

