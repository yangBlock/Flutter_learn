import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blueGrey,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {//释放textEditingController
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {//初始数据
    // TODO: implement initState
    super.initState();
//    textEditingController.text = 'hi';
    textEditingController.addListener((){
      debugPrint('input:${textEditingController.text}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value){//输入时回调方法
//        debugPrint('input:$value');
//      },
      onSubmitted: (value){//点击确定回调方法
        debugPrint('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'title',
        hintText: 'Enter the post title.',
//        border: InputBorder.none,//隐藏底部边框
//        border: OutlineInputBorder(),//显示四个边框
        filled: true,//显示输入框背景色
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

