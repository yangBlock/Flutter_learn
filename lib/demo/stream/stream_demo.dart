import 'package:flutter/material.dart';
import 'dart:async';
class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {

  StreamSubscription _streamSubscription;

  StreamController<String> _streamDemo;

  @override
  void dispose() {
    // TODO: implement dispose
    _streamDemo.close();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _streamDemo = StreamController<String>();
    print('Create a stream.');
    //创建Stream
//    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    
    print('Start listening on a stream.');
    //监听Stream
    _streamSubscription = _streamDemo.stream.listen(
       (event) {
         print('$event');
       },
        onDone: (){//完成时
          print('Done!');
        },
        onError: (error){//报错时
          print('Error:$error');
        });

    print('Initialize completed.');
  }

  void _pauseStream() {
    print('Pause subscription');
    _streamSubscription.pause();
  }
  void _resumerStream() {
    print('Resume subscription');
    _streamSubscription.resume();
  }
  void _cancelStream() {
    print('Cancel subscription');
    _streamSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream.');
    String data = await fetchData();
    _streamDemo.add(data);
  }
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
//    throw 'Somthing happened';//异常信息
    return 'hello ~';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Add'),//暂停
              onPressed: _addDataToStream,
            ),
            FlatButton(
              child: Text('Pause'),//暂停
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('Resume'),//恢复
              onPressed: _resumerStream,
            ),
            FlatButton(
              child: Text('Cancel'),//取消
              onPressed: _cancelStream,
            ),
          ],
        ),
      ),
    );
  }
}
