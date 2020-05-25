import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/hello_demo.dart';
import './demo/Drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/state/state_management.dart';
import './demo/stream/stream_demo.dart';
import './demo/rxdart/rxdart_demo.dart';
import './demo/block/block_demo.dart';
import './demo/http/http_demo.dart';
import './demo/animation/animation_demo.dart';
import './demo/i18n/i18n_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main () => runApp(AppFlutter());

class AppFlutter extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
          supportedLocales: [
            Locale('en','US'),
            Locale('zh','CN'),
          ],
          debugShowCheckedModeBanner: false,
//          home: NavigatorDemo(),
          //初始路由
          initialRoute: '/mdc',
          routes: {//带名字的路由
            '/':(context) => Home(),//初始路由
//            '/about':(context) => Page(title: 'About'),
            '/form':(context) => FormDemo(),
            '/mdc':(context) => MaterialComponents(),
            '/state-management':(context) => StateManagementDemo(),
            '/stream':(context) => StreamDemo(),
            '/rxdart':(context) => RxDartDemo(),
            '/block':(context) => BlockDemo(),
            '/http':(context) => HttpDemo(),
            '/animation':(context) => AnimationDemo(),
            '/i18n':(context) => I18nDemo(),
          },
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70,
            accentColor: Colors.deepOrangeAccent,
          )
      );
    }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
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
                Tab(icon: Icon(Icons.directions_boat)),

              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ),
    );
  }
}
