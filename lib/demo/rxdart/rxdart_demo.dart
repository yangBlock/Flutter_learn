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

  PublishSubject<String> _textFieldSubject;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject.listen((value) => print(value));

//    Stream<String> _stream =  Stream.fromIterable(['hello','你好']);
//    Stream _stream = Stream.periodic(Duration(seconds: 3),(x) => x.toString());//间隔3秒，打印重复的次数
//    _stream.listen((event) {
//      print(event);
//    });

//    PublishSubject<String> _subject = PublishSubject<String>();
//    BehaviorSubject <String> _subject = BehaviorSubject<String>();//BehaviorSubject 把最后一次添加的数据，作为第一个项目交给第一个监听
//    ReplaySubject <String> _subject = ReplaySubject<String>(maxSize: 2);//ReplaySubject 把添加的数据，全部给监听器 maxSize:最大监听数量
//    _subject.add('hello');
//    _subject.add('hola');
//    _subject.add('hi');
//
//    _subject.listen((value) => print('listen 1: $value'));
//    _subject.listen((value) => print('listen 2: ${value.toUpperCase()}'));
//    _subject.close();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value) {
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}

