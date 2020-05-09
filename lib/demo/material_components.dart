import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),

      body: ListView(
        children: <Widget>[
          ListItem(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}
class FloatingActionButtonDemo extends StatelessWidget {
  @override

  final Widget _floatingActionButton = FloatingActionButton(//悬浮按钮
    onPressed: () {},
    child: Icon(Icons.add),//图标
    backgroundColor: Colors.black87,//颜色
//    shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.circular(10.0),
//    ),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(//标签浮动按钮
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add'),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//按钮位置
      bottomNavigationBar: BottomAppBar(//底部工具栏
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),//在底部工具栏上给漂浮按钮切除一个切口
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
