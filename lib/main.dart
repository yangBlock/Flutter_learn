import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/hello_demo.dart';
import './demo/Drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
void main () => runApp(AppFlutter());

class AppFlutter extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70,
          )
      );
    }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child:Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('Flutter'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search button is pressed.')
              ),
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.directions_run)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              Icon(Icons.directions_bike,size: 130,color: Colors.black12),
              Icon(Icons.directions_car,size: 130,color: Colors.black12),

            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ),
    );
  }
}
