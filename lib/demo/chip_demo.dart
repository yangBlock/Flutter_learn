import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Sunset'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('阳'),
                  ),
                ),
                Chip(
                  label: Text('太阳之眼的名字'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('http://t7.baidu.com/it/u=2336214222,3541748819&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1590142371&t=929b38fea24db098b7326c8eb4856532'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},//删除按钮
                  deleteIcon: Icon(Icons.delete),//删除按钮图标
                  deleteIconColor: Colors.redAccent,//删除按钮颜色
                  deleteButtonTooltipMessage: 'Remove this tag',//长按删除按钮提示文字
                ),
                Divider(//分隔符
                  color: Colors.grey,
                  height: 32.0,
//                  indent: 32.0,//左边缩进
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['Apple','Banana','Lemon'];
          });
        },
      ),
    );
  }
}
