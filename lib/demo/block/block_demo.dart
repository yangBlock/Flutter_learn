import 'package:flutter/material.dart';
import 'package:flutterapptext/demo/block/counter_block_demo.dart';

class BlockDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBlock(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BlockDemo'),
          elevation: 0.0,
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButton() ,
      ),
    );
  }
}
