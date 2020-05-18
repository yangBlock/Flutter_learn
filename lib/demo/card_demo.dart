import 'package:flutter/material.dart';
import '../model/post.dart';
class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map((post) {
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      post.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.author),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(post.descripton,maxLines: 2,overflow: TextOverflow.ellipsis),
                  ),

                  ButtonTheme(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text('Like'.toUpperCase()),
                          onPressed: () {},
                          textColor: Colors.redAccent,
                        ),
                        FlatButton(
                          child: Text('read'.toUpperCase()),
                          onPressed: () {},
                          textColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
