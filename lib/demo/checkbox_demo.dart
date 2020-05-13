import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {

  bool _checkboxItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('Checkbox Item A'),//标题
              subtitle: Text('Description'),//副标题
              secondary: Icon(Icons.bookmark),//图标
              selected: _checkboxItemA,//文字是否选中
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                  value: _checkboxItemA,
//                  onChanged: (value) {
//                    setState(() {
//                      _checkboxItemA = value;
//                    });
//                  },
//                  activeColor: Colors.black,//选中的颜色
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
