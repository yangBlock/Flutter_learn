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
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username,passwork;
//自定义注册方法
  void submitRegisterForm () {
    registerFormKey.currentState.save();
    registerFormKey.currentState.validate();
    debugPrint('username: $username');
    debugPrint('passwork: $passwork');
  }

  String validatorUsername(value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value){
              username = value;
            },
            //验证表单里的数据
            validator: validatorUsername,
          ),
          TextFormField(
            obscureText: true,//设置为密码模式
            decoration: InputDecoration(
              labelText: 'Passwork',
              helperText: '',
            ),
            onSaved: (value){
              passwork = value;
            },
            //验证密码不为空
            validator: validatorPassword,
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
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

