import 'package:flutter/material.dart';
import '../model/post.dart';

//PageView 的使用
class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}
/*网络图片的网格视图*/
class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//        crossAxisCount: 3,
        maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

/*也是网格视图*/
class GridViewExtentDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index', style: TextStyle(fontSize: 18.0, color: Colors.grey),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,//最大尺寸
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,//横向滚动，默认是垂直
      children: _buildTiles(100),
    );
  }
}

/*网格视图*/
class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index', style: TextStyle(fontSize: 18.0, color: Colors.grey),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,//横向滚动，默认是垂直
      children: _buildTiles(100),
    );
  }
}
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,//交叉轴对齐方式
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
//      pageSnapping: false,//是否关闭弹簧效果
//      reverse: true,//是否倒置
      scrollDirection: Axis.vertical, //垂直滚动，默认是水平滚动
      //滚动时回调方法
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        initialPage: 1,//设置初始显示的页面，默认是0
        keepPage: false,//是否记住用户滚动哪个页面，默认是ture
        viewportFraction: 0.85,//页面占用可是图比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0,color: Colors.white),
          ),
        ),
      ],
    );
  }
}