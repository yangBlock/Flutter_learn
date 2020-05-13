import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int _radioGroupA = 0;
  void _handleRadioChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
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
                Radio(//单选
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioChanged,
                  activeColor: Colors.black,
                ),
                Radio(//单选
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioChanged,
                  activeColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
