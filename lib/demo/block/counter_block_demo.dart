import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBlock _counterBloc = CounterProvider.of(context).bloc;

    return Center(
      child: ActionChip(
          label: Text('0'),
          onPressed: () {
//            _counterBloc.log();
          _counterBloc.counter.add(1);
          },
          ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBlock _counterBloc = CounterProvider.of(context).bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        _counterBloc.log();
        _counterBloc.counter.add(1);
      },
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBlock bloc;

  CounterProvider({
    this.child,
    this.bloc,
  }) : super(child:child);

  static CounterProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();
  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
    return true;
  }
}



class CounterBlock {
  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;

  CounterBlock() {
    _counterActionController.stream.listen((event) {
      print(event);
    });
  }
  void disponse() {
    _counterActionController.close();
  }
  void log() {
    print('Bloc');
  }
}