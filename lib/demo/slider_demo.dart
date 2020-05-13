import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _sliderItemA,
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,//已选中的颜色
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),//未滑动到的颜色
                  min: 0.0,//最小值，默认为0
                  max: 10.0,//最大值，默认为1
                  divisions: 10,//平均分成的份数
                  label: '${_sliderItemA.toInt()}',//滑动显示label
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('SliderValue: $_sliderItemA'),
          ],
        ),
      ),
    );
  }
}
