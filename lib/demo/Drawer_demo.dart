import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Flutter_learn', style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('flutter_learn@fultton.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://t8.baidu.com/it/u=354430747,157588075&fm=79&app=86&f=JPEG?w=1280&h=1921'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image:NetworkImage('http://t9.baidu.com/it/u=353721707,184451439&fm=79&app=86&f=JPEG?w=1280&h=853'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Messages',textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings',textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12,size: 22.0,),
            onTap: ()=>Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}